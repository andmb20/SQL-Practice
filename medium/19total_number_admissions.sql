-- Challenge:

-- Show first_name, last_name, and the total number of admissions attended for each doctor. Every admission has been attended by a doctor.

-- My Solution:

select dc.first_name, dc.last_name, count(ad.admission_date) as admissions_total from doctors as dc
join admissions as ad on dc.doctor_id = ad.attending_doctor_id
group by dc.doctor_id;

-- Possible Solutions:

SELECT
  first_name,
  last_name,
  count(*) as admissions_total
from admissions a
  join doctors ph on ph.doctor_id = a.attending_doctor_id
group by attending_doctor_id

---------------------

SELECT
  first_name,
  last_name,
  count(*)
from
  doctors p,
  admissions a
where
  a.attending_doctor_id = p.doctor_id
group by p.doctor_id;
