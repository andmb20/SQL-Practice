-- Challenge:

-- For every admission, display the patient's full name, their admission diagnosis, and their doctor's full name who diagnosed their problem.

-- My Solution:

SELECT 
concat(pt.first_name,' ',pt.last_name) as patient_name,
ad.diagnosis,
concat(dc.first_name,' ',dc.last_name) as doctor_name
from admissions as ad
join patients as pt on ad.patient_id = pt.patient_id 
join doctors as dc on ad.attending_doctor_id = dc.doctor_id;

-- Possible Solution:

SELECT
  CONCAT(patients.first_name, ' ', patients.last_name) as patient_name,
  diagnosis,
  CONCAT(doctors.first_name,' ',doctors.last_name) as doctor_name
FROM patients
  JOIN admissions ON admissions.patient_id = patients.patient_id
  JOIN doctors ON doctors.doctor_id = admissions.attending_doctor_id;