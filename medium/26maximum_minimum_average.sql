-- Challenge:

        -- Esse me pegou 

-- Display a single row with max_visits, min_visits, average_visits where the maximum, minimum and average number of admissions per day is calculated. Average is rounded to 2 decimal places.

-- My Solution:

select 
max(number_of_admissions) as max_visits, 
min(number_of_admissions) as min_visits, 
round(avg(number_of_admissions),2) as average_visits
from (select 
day(admission_date) as day_number, count(*) as number_of_admissions
from admissions
group by admission_date);

-- Possible Solution:

select 
	max(number_of_visits) as max_visits, 
	min(number_of_visits) as min_visits, 
  round(avg(number_of_visits),2) as average_visits 
from (
  select admission_date, count(*) as number_of_visits
  from admissions 
  group by admission_date
)
