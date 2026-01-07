-- Format inconsistent dates by adding new columns
ALTER TABLE gamezone_orders
ADD COLUMN purchase_date DATE;

ALTER TABLE gamezone_orders
ADD COLUMN ship_date DATE;

UPDATE gamezone_orders
SET purchase_date =
    CASE
        -- US format with dashes: mm-dd-yyyy ...
        WHEN purchase_ts LIKE '%-%'
            THEN STR_TO_DATE(LEFT(purchase_ts, 10), '%m-%d-%Y')

        -- Day-first format with slashes: dd/mm/yyyy ...
        WHEN purchase_ts LIKE '%/%'
            THEN STR_TO_DATE(LEFT(purchase_ts, 10), '%d/%m/%Y')
        ELSE NULL
    END;

UPDATE gamezone_orders
SET ship_date = STR_TO_DATE(ship_ts, '%d/%m/%Y');

-- Remove purchase_ts & ship_ts column
ALTER TABLE gamezone_orders
DROP COLUMN purchase_ts;

ALTER TABLE gamezone_orders
DROP COLUMN ship_ts;

-- Create staging table
CREATE TABLE gamezone_orders_clean (
	user_id VARCHAR(50),
    order_id VARCHAR(50),
    product_name VARCHAR(255),
    product_id VARCHAR(50),
    usd_price NUMERIC(10,2),
    purchase_platform VARCHAR(50),
    marketing_channel VARCHAR(50),
    account_creation_method VARCHAR(50),
    country_code VARCHAR(10),
	purchase_date DATE,
    ship_date DATE
);

-- Copy data to the new copy
INSERT INTO gamezone_orders_clean
SELECT *
FROM gamezone_orders;

SELECT *
FROM gamezone_orders_clean;

-- Check rows where columns are blank/NULL/unknown
SELECT *
FROM gamezone_orders_clean
WHERE purchase_platform IS NULL
	OR TRIM(purchase_platform) = ''
    OR LOWER(purchase_platform) = 'unknown'
	OR marketing_channel IS NULL
    OR TRIM(marketing_channel) = ''
    OR LOWER(marketing_channel) = 'unknown'
    OR account_creation_method IS NULL
    OR TRIM(account_creation_method) = ''
    OR LOWER(account_creation_method) = 'unknown';
    
-- Update "unknowns" into NULLs
UPDATE gamezone_orders_clean
SET
	purchase_platform = NULLIF(LOWER(TRIM(purchase_platform)), 'unknown'),
    marketing_channel = NULLIF(LOWER(TRIM(marketing_channel)), 'unknown'),
	account_creation_method = NULLIF(LOWER(TRIM(account_creation_method)), 'unknown');

-- Update blanks into NULLs
UPDATE gamezone_orders_clean
SET
	purchase_platform = NULLIF(LOWER(TRIM(purchase_platform)), ''),
    marketing_channel = NULLIF(LOWER(TRIM(marketing_channel)), ''),
	account_creation_method = NULLIF(LOWER(TRIM(account_creation_method)), '')
WHERE
	TRIM(purchase_platform) = ''
	OR TRIM(marketing_channel) = ''
    OR TRIM(account_creation_method) = '';

-- Check for data issues
SELECT COUNT(*)
FROM gamezone_orders_clean
WHERE usd_price <= 0; -- Negative or zero value
-- Total of 29 entries: Left as is - low magnitude

SELECT COUNT(*)
FROM gamezone_orders_clean
WHERE ship_date < purchase_date; -- Ship date earlier than purchase date
-- Total of 1999 entries: Left as is - flag it doing further analysis on ship_date

-- Add region column
ALTER TABLE gamezone_orders_clean
ADD COLUMN region VARCHAR(10);

-- Join region column
UPDATE gamezone_orders_clean AS c
LEFT JOIN gamezone_orders_region AS r
	ON c.country_code = r.country_code
SET c.region = r.region;

-- Check for duplicates
SELECT order_id, COUNT(*) as count
FROM gamezone_orders_clean
GROUP BY order_id
HAVING COUNT(*) > 1;

-- Delete duplicates
DELETE g
FROM (
    SELECT 
        ROW_NUMBER() OVER (
            PARTITION BY order_id
            ORDER BY order_id
        ) AS row_num,
        order_id
    FROM gamezone_orders_clean
) d
JOIN gamezone_orders_clean g
  ON g.order_id = d.order_id
WHERE d.row_num > 1;

-- Export final clean table
CREATE TABLE gamezone_orders_final AS
SELECT *
FROM gamezone_orders_clean;
