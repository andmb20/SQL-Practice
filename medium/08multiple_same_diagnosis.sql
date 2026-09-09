-- Challenge:

-- 

-- My solution:

select patient_id, diagnosis 
from admissions
group by patient_id, diagnosis
having count(diagnosis) > 1;

-- Possible Solution:

SELECT
  patient_id,
  diagnosis
FROM admissions
GROUP BY
  patient_id,
  diagnosis
HAVING COUNT(*) > 1;