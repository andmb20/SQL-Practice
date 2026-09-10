-- Challenge:

-- Show patient_id, attending_doctor_id, and diagnosis for admissions that match one of the two criteria:
-- 1. patient_id is an odd number and attending_doctor_id is either 1, 5, or 19.
-- 2. attending_doctor_id contains a 2 and the length of patient_id is 3 characters.

-- My Solution:

select patient_id, attending_doctor_id, diagnosis from admissions
where 
(patient_id % 2 <> 0 and (attending_doctor_id = 1 or attending_doctor_id = 5 or attending_doctor_id = 19)) 
or 
(attending_doctor_id like '%2%' and patient_id between 100 and 999);

-- Possible Solution:

SELECT
  patient_id,
  attending_doctor_id,
  diagnosis
FROM admissions
WHERE
  (
    attending_doctor_id IN (1, 5, 19)
    AND patient_id % 2 != 0
  )
  OR 
  (
    attending_doctor_id LIKE '%2%'
    AND len(patient_id) = 3
  )