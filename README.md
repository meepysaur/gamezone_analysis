# Project Background
GameZone Co. is a global e-commerce company operating in the consumer electronics and gaming hardware industry. The company sells products directly to customers through its website and mobile app, with orders fulfilled via international shipping. Customer acquisition is driven by key marketing channels including direct traffic, affiliates, and referrals, and GameZone serves multiple international markets such as the US, UK, Canada, and Australia.

GameZone has accumulated substantial data across its sales and marketing activities. This project analyzes that data to uncover actionable insights that enhance commercial performance and support data-driven decision-making.

Insights and recommendations are provided on the following key areas:

1. **Demand & Revenue Trends:** How sales and revenue change over time, identifying patterns such as growth phases, seasonal peaks, and periods of lower activity.
2. **Marketing Channel Performance:** How different marketing channels contribute to traffic, sales, and revenue.
3. **Geographic & Regional Activity:** Where customers are located and how demand varies across different countries and regions.
4. **Customer Purchase & Signup Behavior:** How customers interact with the platform, including how they create accounts and complete purchases.

The SQL queries used to inspect and clean the data for this analysis can be found [here](https://github.com/meepysaur/gamezone_analysis/blob/main/Gamezone_Data_Clean.sql).

An interactive Power BI dashboard used to report and explore sales trends can be found [here] [link].



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



### Marketing Channel Performance

* Between 2019 to 2020, revenue growth was heavily channel-driven, with direct traffic accounting for a disproportionate share of total revenue, rather than growth being evenly distributed across all marketing channels. 
  
* Analysis of average order value (AOV) by marketing channel shows that the highest-revenue channels (direct and affiliate) also attracted higher-value transactions, with AOVs consistently exceeding the company-wide average of approximately $281 per order.

* Lower-performing channels contributed only marginal revenue and did not exhibit meaningful AOV improvement over time, thereby limiting their overall impact on commercial performance.

* The alignment between revenue and AOV trends indicates that channel quality, rather than reach alone, played a critical role in driving GameZone’s growth during peak demand periods.

<img width="1280" height="303" alt="image" src="https://github.com/user-attachments/assets/691a7b65-7dc7-4ca0-9b5b-409ab0efbb7d" />



### Category 3:

* **Main insight 1.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 2.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 3.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 4.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.

[Visualization specific to category 3]


### Category 4:

* **Main insight 1.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 2.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 3.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 4.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.

[Visualization specific to category 4]



# Recommendations:

Based on the insights and findings above, we would recommend the [stakeholder team] to consider the following: 

* Specific observation that is related to a recommended action. **Recommendation or general guidance based on this observation.**
  
* Specific observation that is related to a recommended action. **Recommendation or general guidance based on this observation.**
  
* Specific observation that is related to a recommended action. **Recommendation or general guidance based on this observation.**
  
* Specific observation that is related to a recommended action. **Recommendation or general guidance based on this observation.**
  
* Specific observation that is related to a recommended action. **Recommendation or general guidance based on this observation.**
  


# Assumptions and Caveats:

Throughout the analysis, multiple assumptions were made to manage challenges with the data. These assumptions and caveats are noted below:

* Assumption 1 (ex: missing country records were for customers based in the US, and were re-coded to be US citizens)
  
* Assumption 1 (ex: data for December 2021 was missing - this was imputed using a combination of historical trends and December 2020 data)
  
* Assumption 1 (ex: because 3% of the refund date column contained non-sensical dates, these were excluded from the analysis)
