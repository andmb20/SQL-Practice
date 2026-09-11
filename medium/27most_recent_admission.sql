-- Challenge:

-- Display every patient that has at least one admission and show their most recent admission along with the patient and doctor's full name.

-- My Solution:

SELECT
CONCAT(pt.first_name, ' ', pt.last_name) as patient_name,
max(ad.admission_date),
CONCAT(dc.first_name, ' ', dc.last_name) as doctor_name
FROM patients as pt
join admissions as ad on ad.patient_id = pt.patient_id
join doctors as dc on ad.attending_doctor_id = dc.doctor_id
group by pt.patient_id;

-- Possible Solution:

SELECT 
    p.first_name || ' ' || p.last_name AS patient_name,
    a.admission_date,
    d.first_name || ' ' || d.last_name AS doctor_name
FROM patients p
JOIN admissions a ON p.patient_id = a.patient_id
JOIN doctors d ON a.attending_doctor_id = d.doctor_id
WHERE a.admission_date = (
    SELECT MAX(a2.admission_date)
    FROM admissions a2
    WHERE a2.patient_id = p.patient_id
);
