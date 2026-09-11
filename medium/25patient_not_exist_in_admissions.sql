-- Challenge:

-- Show patient_id, first_name, last_name from patients whose does not have any records in the admissions table. (Their patient_id does not exist in any admissions.patient_id rows.)

-- My Solution:

SELECT pt.patient_id, pt.first_name, pt.last_name
FROM patients pt
left JOIN admissions ad ON pt.patient_id = ad.patient_id
where ad.admission_date is null ;

-- Possible Solution:

SELECT
  patients.patient_id,
  first_name,
  last_name
from patients
where patients.patient_id not in (
    select admissions.patient_id
    from admissions
  )

SELECT
  patients.patient_id,
  first_name,
  last_name
from patients
  left join admissions on patients.patient_id = admissions.patient_id
where admissions.patient_id is NULL