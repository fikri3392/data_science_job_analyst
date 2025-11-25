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
1. Effect of Experience: How does the average salary change as experience level increases (EN -> EX)?
2. Market Trends: What is the average annual salary increase in this industry from 2020 to 2022?
3. Salary Geography: Which countries offer the highest average salaries (excluding countries with little data)?
4. Work Flexibility: Do Full Remote jobs have higher, equal, or lower compensation than On-Site jobs?
5. Most Profitable Roles: What are the top 10 job titles with the highest average salaries?

## Key Insights
Here are some key insights identified from the SQL query execution:
