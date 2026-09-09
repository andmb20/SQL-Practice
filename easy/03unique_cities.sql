-- Challenge:

-- Based on the cities that our patients live in, show unique cities that are in province_id 'NS'.

-- My solution:

select distinct city from patients where province_id like 'NS';

-- Expected solution:

SELECT DISTINCT(city) AS unique_cities
FROM patients
WHERE province_id = 'NS';

