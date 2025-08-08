-- Exploratory Data Analysis

select *
from cleaned_layoffs;

-- Find the maximum total_laid_off and percentage_laid_off values
select max(total_laid_off) as Max_total_laid_off , max(percentage_laid_off) as Max_percentage_laid_off
from cleaned_layoffs;

-- Count of the companies
select count(distinct company) as company_number
from cleaned_layoffs; 

-- Count of the industries
select count(distinct industry) as industry_number
from cleaned_layoffs; 

-- Find the companies that had a 100% layoff
select *
from cleaned_layoffs
where percentage_laid_off = 1;

-- Find the total number of people laid off per company, ordered by descending total
select company, sum(total_laid_off) as total_laid_off
from cleaned_layoffs
group by company
order by total_laid_off desc;

-- Find the total number of people laid off per industry, ordered by descending total
select industry, sum(total_laid_off) as total_laid_off
from cleaned_layoffs
group by industry
order by total_laid_off desc;

-- Find the total number of people laid off per country, ordered by descending total
select country, sum(total_laid_off) as total_laid_off
from cleaned_layoffs
group by country
order by total_laid_off desc;

-- Find the total number of people laid off per year, ordered by descending total
select year(date) as Year, sum(total_laid_off) as total_laid_off
from cleaned_layoffs
group by year(date)
order by Year desc;

-- Find the total number of people laid off per stage, ordered by descending total
select stage, sum(total_laid_off) as total_laid_off
from cleaned_layoffs
group by stage
order by total_laid_off desc;


-- Find the total number of people laid off per year and month, ordered by descending total
select LEFT(CONVERT(varchar, date, 120), 7) AS date, sum(total_laid_off) as total_laid_off
from cleaned_layoffs
where LEFT(CONVERT(varchar, date, 120), 7) is not null
group by LEFT(CONVERT(varchar, date, 120), 7)
order by date asc;


-- Find the total number of people laid off per company and year,ordered by the year in which each company had the highest layoffs (in descending order)
select company, year(date) as year,  sum(total_laid_off) as total_laid_off
from cleaned_layoffs
group by company, year(date)
order by total_laid_off desc;

-- Retrieves the top 5 companies with the highest total layoffs for each year, ranking companies by layoffs within each year without gaps in the ranking
with company_year as 
( 
select company, year(date) as year,  sum(total_laid_off) as total_laid_off
from cleaned_layoffs
group by company, year(date)
), company_year_rank as
(
select *, dense_rank() over(partition by year order by total_laid_off desc) as Ranking
from company_year
where year is not null
)
select *
from company_year_rank
where Ranking <= 5;












