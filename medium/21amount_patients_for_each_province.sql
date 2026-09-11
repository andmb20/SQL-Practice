-- Challenge:

-- Display the total amount of patients for each province. Order by descending.

-- My Solution:

select pn.province_name, count(*) as patient_count from province_names as pn
join patients as p on p.province_id = pn.province_id 
group by pn.province_name
order by patient_count desc;