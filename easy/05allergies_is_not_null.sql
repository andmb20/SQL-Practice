-- Challenge:

--Write a query to find list of patients first_name, last_name, and allergies where allergies are not null and are from the city of 'Hamilton'

-- My Solution:

select first_name, last_name, allergies from patients where allergies not null and city like 'Hamilton';

-- Expected Solution:

SELECT
  first_name,
  last_name,
  allergies
FROM patients
WHERE
  city = 'Hamilton'
  and allergies is not null