# data_science_job_analyst
a simple project in SQL to analyze data science job using a dataset from kaggle.

## Project Overview
This project is part of the Data Analysis using SQL portfolio, which aims to explore compensation trends in the global Data Science industry between 2020 and 2022. The analysis focuses on key factors influencing salaries, such as experience level, company location, and remote ratio.

## data source : 
https://www.kaggle.com/datasets/ruchi798/data-science-job-salaries

## tools : mySQL

## Dataset Column Descriptions

| Column | Description |
| :--- | :--- |
| **work_year** | The year the salary was paid. |
| **experience_level** | The experience level in the job during the year. Possible values: **EN** (Entry-level / Junior), **MI** (Mid-level / Intermediate), **SE** (Senior-level / Expert), **EX** (Executive-level / Director). |
| **employment_type** | The type of employment for the role. Possible values: **PT** (Part-time), **FT** (Full-time), **CT** (Contract), **FL** (Freelance). |
| **job_title** | The role worked in during the year. |
| **salary** | The total gross salary amount paid. |
| **salary_currency** | The currency of the salary paid as an **ISO 4217** currency code. |
| **salary_in_usd** | The salary in USD (FX rate divided by avg. USD rate for the respective year via fxdata.foorilla.com). |
| **employee_residence** | Employee's primary country of residence during the work year as an **ISO 3166** country code. |
| **remote_ratio** | The overall amount of work done remotely. Possible values: **0** (No remote work, less than 20%), **50** (Partially remote), **100** (Fully remote, more than 80%). |
| **company_location** | The country of the employer's main office or contracting branch as an **ISO 3166** country code. |
| **company_size** | The average number of people that worked for the company during the year. Possible values: **S** (less than 50 employees - small), **M** (50 to 250 employees - medium), **L** (more than 250 employees - large). |

---

## SQL Analysis Metrics and Questions
This analysis focuses on answering key business questions through complex SQL queries:
1. Which country has the highest salaries for data analysis jobs?
2. Average salaries by job level in the US.
3. Average salaries year over year.
4. Composition of remote work ratios in the US.
5. Average salaries by work style in the US.

## Key Insights
Here are some key insights identified from the SQL query execution:
| Findings | Decriptions | Key Number |
| :--- | :--- | :--- |
| **1. Company location** | Financial Data Analyst in USA get hightest annual salary in average.| $450000 | 
| **2. Average Salary** | The highest average salary increase was from senior SE level to executive EX with a 60% increase. | EN=$93,112.90; MI=$125,780.21; SE=$151,527.63; EX= $243,742.19|
| **3. Salary Trends** | From 2020 to 2021, the average salary decreased by 0.88%, then from 2021 to 2022, the average salary increased by 2.17%. | 2020=$143,251.27; 2021=$141,990.99; 2022=$145,066.25 |
| **4. Work Flexibility** | 74.93% of employees in the US are remote employees, while only 19.44% work on-site. | Remote=266; hybrid=20; On-site=69 |
| **5. Remote Employee** | remote employees earn 6.38% more than on-site employees. | Remote=$146,624.24; hybrid=$131,379.45; On-site=$137,825.81 |

---
