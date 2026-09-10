-- Challenge:

-- Show all allergies ordered by popularity. Remove NULL values from query.

-- My Solution:

select allergies, count(*) as total_diagnosis 
from patients
where allergies not null
group by allergies
order by total_diagnosis desc;

-- Possible Solution:

SELECT
  allergies,
  COUNT(*) AS total_diagnosis
FROM patients
WHERE
  allergies IS NOT NULL
GROUP BY allergies
ORDER BY total_diagnosis DESC