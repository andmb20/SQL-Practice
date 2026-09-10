-- Challenge:

-- For each doctor, display their id, full name, and the first and last admission date they attended.

-- My Solution:

select dc.doctor_id, concat(dc.first_name, ' ', dc.last_name) as full_name, 
min(ad.admission_date) as first_admission_date, 
max(ad.admission_date) as last_admission_date 
from doctors as dc
join admissions as ad on dc.doctor_id = ad.attending_doctor_id
group by doctor_id;

-- Possible Solution:

select
  doctor_id,
  first_name || ' ' || last_name as full_name,
  min(admission_date) as first_admission_date,
  max(admission_date) as last_admission_date
from admissions a
  join doctors ph on a.attending_doctor_id = ph.doctor_id
group by doctor_id;