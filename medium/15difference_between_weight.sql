-- Challenge:

-- Show the difference between the largest weight and smallest weight for patients with the last name 'Maroni'

-- My Solution:

select max(weight) - min(weight) as weight_delta from patients
where last_name like 'Maroni';

-- Possible Solutions:

SELECT
  (MAX(weight) - MIN(weight)) AS weight_delta
FROM patients
WHERE last_name = 'Maroni';
