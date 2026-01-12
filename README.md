# Project Background
GameZone Co. is a global e-commerce company operating in the consumer electronics and gaming hardware industry. The company sells products directly to customers through its website and mobile app, with orders fulfilled via international shipping. Customer acquisition is driven by key marketing channels including direct traffic, affiliates, and referrals, and GameZone serves multiple international markets such as the US, UK, Canada, and Australia.

GameZone has accumulated substantial data across its sales and marketing activities. This project analyzes that data to uncover actionable insights that enhance commercial performance and support data-driven decision-making.

Insights and recommendations are provided on the following key areas:

1. **Demand & Revenue Trends:** How sales and revenue change over time, identifying patterns such as growth phases, seasonal peaks, and periods of lower activity.
2. **Marketing Channel Performance:** How different marketing channels contribute to traffic, sales, and revenue.
3. **Geographic & Regional Activity:** Where customers are located and how demand varies across different countries and regions.
4. **Customer Purchase & Signup Behavior:** How customers interact with the platform, including how they create accounts and complete purchases.

The SQL queries used to inspect and clean the data for this analysis can be found [here](https://github.com/meepysaur/gamezone_analysis/blob/main/Gamezone_Data_Clean.sql).

An interactive Power BI dashboard used to report and explore sales trends can be found [here](https://app.powerbi.com/view?r=eyJrIjoiYzkzYzdjYmUtYWFiOS00MTNiLWFiMDUtODUwZmVhZjhiMjNmIiwidCI6IjI5ZmU1ZGY5LWM0ZTEtNGNkNy05YzI1LTBmYmI2MmM0OThmZSJ9).



# Data Structure & Initial Checks

Gamezone's database structure as seen below consists of two tables: orders and region, with a total row count of 21,864 records.

<img width="626" height="413" alt="image" src="https://github.com/user-attachments/assets/a2d2f2c6-cb44-454c-a73e-d22fc0d1a86d" />



# Executive Summary

### Overview of Findings

The analysis indicates that GameZone’s performance is shaped by clear seasonal demand patterns. From 2019 to 2020, the company experienced strong year-over-year growth, with revenue increasing by 162%, order volume by 101%, and average order value (AOV) by 30%, reflecting highly effective demand capture during that period. This growth phase was followed by a sharp decline at the start of 2021, marked by significant contractions in both order volume and revenue.

_Note: Year-over-year growth analysis is based on 2020 data, as 2021 contains incomplete monthly data._

<img width="1280" height="711" alt="image" src="https://github.com/user-attachments/assets/808db5ad-52b0-4b65-8ae9-51b25c35fb31" />



# Insights Deep Dive
### 1. Demand & Revenue Trends

* From 2019 to 2020, total revenue more than doubled, increasing by 162% YoY, while order volume grew by 101% YoY, driven primarily by a small number of high-performing products, most notably Nintendo Switch and 4k gaming monitors.

* The demand surge in 2020 coincided with the COVID-19 period, during which consumers spent more time at home. This behavioral shift is clearly reflected in the data through a substantial increase in units sold, particularly for home-entertainment and gaming products.

* High-value products did not necessarily correspond to high unit sales. For example, the Sony PlayStation 5 bundle generated substantial annual revenue, despite comparatively lower units sold, reflecting its significantly higher price point relative to other products.
  
* Product contribution was uneven across the portfolio. While a handful of core products accounted for the majority of sales and revenue growth, lower-performing categories such as gaming headsets contributed approximately ~2% of total sales, indicating a limited impact on overall commercial performance.

<img width="1281" height="343" alt="image" src="https://github.com/user-attachments/assets/9f74851a-7e98-4206-b29b-96f1f9f5adbe" />



### 2. Marketing Channel Performance

* Between 2019 to 2020, revenue growth was heavily channel-driven, with direct traffic accounting for a disproportionate share of total revenue, rather than growth being evenly distributed across all marketing channels. 
  
* Analysis of average order value (AOV) by marketing channel shows that the highest-revenue channels (direct and affiliate) also attracted higher-value transactions, with AOVs consistently exceeding the company-wide average of approximately $281 per order.

* Lower-performing channels contributed only marginal revenue and did not exhibit meaningful AOV improvement over time, thereby limiting their overall impact on commercial performance.

* The alignment between revenue and AOV trends indicates that channel quality, rather than reach alone, played a critical role in driving GameZone’s growth during peak demand periods.

<img width="1278" height="307" alt="image" src="https://github.com/user-attachments/assets/8024e2c3-e79d-4811-a8b0-4957759042e1" />



### 3. Geography & Regional Activity

* North America (NA) led overall performance, recording the highest number of orders (10.3k) and the highest revenue ($2.9M), followed by Europe, Middle East, and Africa (EMEA) with 6.0k orders and $1.66M in revenue. These regions also accounted for the largest volume of products sold, driven primarily by strong demand for Nintendo Switch consoles and Sony PlayStation 5 bundles, which dominated both unit sales and revenue contribution.

* Asia-Pacific (APAC) recorded 2.4k orders and $668K in revenue, while Latin America (LATAM) contributed the fewest orders (1.1k), the lowest revenue ($308K), and the smallest share of products sold. In LATAM, sales were concentrated in lower-priced items, with accessory categories such as gaming headsets contributing only a marginal share of total units and revenue, thereby limiting overall commercial impact.

<img width="1280" height="307" alt="image" src="https://github.com/user-attachments/assets/2fc7254d-0402-43f9-86bc-23456754db67" />



### 4. Customer Purchase & Signup Behavior

* Product sales were overwhelmingly driven through the website platform, which accounted for over 90% of total products sold across 2019 and 2020. This indicates that customer purchasing behavior was highly concentrated on the core website experience rather than distributed across mobile channels.

* The sharp YoY increase in products sold from 2019 to 2020 occurred almost entirely on the website, suggesting that demand growth during the COVID-19 period was driven by increased traffic and conversion on the existing platform, as consumers spent more time at home, rather than by shifts toward alternative purchase platforms.

* Desktop-based account creation consistently dominated product sales in both years, reflecting a strong preference for traditional signup and checkout flows. This pattern remained stable through the COVID-19 period, indicating that heightened demand amplified existing customer behaviors rather than changing how customers onboarded or completed purchases.

<img width="1275" height="302" alt="image" src="https://github.com/user-attachments/assets/acb8d003-3b23-4273-a1c3-7ef0daa98248" />



# Recommendations

Based on the findings above, and noting that the exceptional growth in 2020 was largely driven by COVID-19–related consumer behavior, the Marketing Team should consider the following:

* **Focus on core products while reducing reliance on a narrow portfolio.**
Continue prioritizing Nintendo Switch consoles and PlayStation bundles, especially in NA and EMEA, while using bundles and accessories (e.g., headsets) to increase basket size. Emphasize winter promotions (October–November) for top-performing products.
  
* **Prioritize high-intent marketing channels.**
Direct and affiliate channels deliver the highest revenue and AOV. Investment should focus on optimizing these channels rather than expanding into lower-performing acquisition sources, with performance evaluated on revenue and AOV, not just volume.
  
* **Optimize the website as the primary sales channel.**
With over 90% of sales occurring on the website, focus on improving conversion and checkout experience. Explore mobile channels gradually without diverting focus from the core website.
  
* **Evolve marketing messaging beyond COVID-era themes.**
Messaging centered on stay-at-home behavior may lose relevance over time. Marketing should gradually pivot toward themes that emphasize:
  * Product value and longevity
  * Social, competitive, and lifestyle gaming use cases
  * Product quality, performance, and ecosystem compatibility
  
  

# Assumptions and Caveats

Throughout the analysis, multiple assumptions were made to manage limitations and inconsistencies within the dataset. These assumptions and caveats are outlined below:

* Data for 2021 contains only two months (January and February), and therefore was excluded from year-over-year growth comparisons and trend analysis. All YoY insights focus on 2019–2020, which contain full-year data.
  
* The significant growth observed in 2020 is assumed to be strongly influenced by COVID-19–related consumer behavior, including increased time spent at home. As a result, 2020 performance is treated as an exceptional year rather than a baseline for future growth.
  
* Revenue is calculated using the usd_price field, which is assumed to represent the final transaction value per order. Discounts, refunds, taxes, and shipping fees are not separately identified and therefore not adjusted for.

* Each record is assumed to represent one product sold per order. If orders contain multiple items, this may result in underestimation of total units sold.
