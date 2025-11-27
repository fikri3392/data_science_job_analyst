-- Data Science Salaries data analysist
select * from salaries;

-- check if any data is null
select * from salaries
where
	work_year is null
    or experience_level is null
    or employment_type is null
    or job_title is null
    or salary is null
    or salary_currency is null
    or salary_in_usd is null
    or employee_residence is null
    or remote_ratio is null
    or company_location is null
    or company_size is null;
    
-- 1. Company location with highest salary for data analyst role
select
    distinct company_location,
    job_title, experience_level,
    round(avg(salary_in_usd), 2) as avg_salary
from salaries
where job_title like '%data analyst%'
group by 
	company_location,
    job_title, experience_level
order by avg_salary desc limit 10;

-- 2. Average salary from every level in US
select
	experience_level,
    round(avg(salary_in_usd), 2) as avg_salary
from salaries
where company_location = 'US'
group by experience_level
order by avg_salary desc;

-- 3. salary trends every year average in US
select
	work_year,
    round(avg(salary_in_usd), 2) as avg_salary
from salaries
where company_location = 'US'
group by work_year
order by work_year desc;

-- 4. work remote style composition in US
select
	company_location,
    case
		when remote_ratio = 0 then 'On-site'
        when remote_ratio = 50 then 'Hybrid'
        when remote_ratio = 100 then 'Remote'
        else 'Others'
	end as work_style,
    count(*) as number_of_jobs
from salaries
where company_location = 'US'
group by work_style
order by number_of_jobs desc;

-- 5. average salary for every work style in US
select
	case
		when remote_ratio = 0 then 'On-site'
        when remote_ratio = 50 then 'Hybrid'
        when remote_ratio = 100 then 'Remote'
        else 'Others'
	end as work_style,
    round(avg(salary_in_usd), 2) as avg_salary
from salaries
where company_location = 'US'
group by work_style
order by avg_salary desc;

-- end