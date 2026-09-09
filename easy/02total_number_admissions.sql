-- Challenge:

-- Show the patient id and the total number of admissions for patient_id 579.

-- My solution:

select patient_id, count(admission_date) 
from admissions 
where patient_id = 579;

-- Expected solution:

SELECT
  patient_id,
  COUNT(*) AS total_admissions
FROM admissions
WHERE patient_id = 579;