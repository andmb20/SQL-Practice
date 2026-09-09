-- Challenge:

-- Show the city and the total number of patients in the city. Order from most to least patients and then by city name ascending.

-- My solution:

select city, count(patient_id) as num_patients
from patients
group by city
order by num_patients desc, city;

-- Possible Solution:

SELECT
  city,
  COUNT(*) AS num_patients
FROM patients
GROUP BY city
ORDER BY num_patients DESC, city asc;