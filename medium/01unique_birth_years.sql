-- Challenge:

-- Show unique birth years from patients and order them by ascending.

-- My Solution:

select distinct substring(birth_date,1,4) as bd from patients order by bd;
