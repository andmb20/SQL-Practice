-- Challenge:

-- Show patient_id, first_name, last_name from patients whos diagnosis is 'Dementia'. Primary diagnosis is stored in the admissions table.

select pa.patient_id, first_name, last_name from patients as pa 
join admissions as ad on pa.patient_id = ad.patient_id
where ad.diagnosis = 'Dementia';
