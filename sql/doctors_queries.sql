show search_path;
set search_path to hospital;

select * from patient_records pr;

-- How many doctors do we have in the hospital?
select pr.doctor_name from patient_records pr
group by doctor_name
order by doctor_name asc;

-- How many patients were treated by each doctor?
select pr.doctor_name, count(*) as n_patients
from patient_records pr 
group by doctor_name
order by doctor_name asc;

-- List of patients by each doctor
-- 1. Dr. Atieno
select pr.patient_id, pr.patient_name  from patient_records pr  
where pr.doctor_name ilike 'Dr. Atieno'
group by patient_id;

-- 2. Dr. Chebet
select pr.patient_id, pr.patient_name  from patient_records pr  
where pr.doctor_name ilike 'Dr. Chebet'
group by patient_id;

-- 3. Dr. Cherono
select pr.patient_id, pr.patient_name  from patient_records pr  
where pr.doctor_name ilike 'Dr. Cherono'
group by patient_id;

-- 4. Dr. Kamau
select pr.patient_id, pr.patient_name  from patient_records pr  
where pr.doctor_name ilike 'Dr. Kamau'
group by patient_id;

-- 5. Dr. Kiplagat
select pr.patient_id, pr.patient_name  from patient_records pr  
where pr.doctor_name ilike 'Dr. Kiplagat'
group by patient_id;

-- 6. Dr. Kuria
select pr.patient_id, pr.patient_name  from patient_records pr  
where pr.doctor_name ilike 'Dr. Kuria'
group by patient_id;

-- 7. Dr. Mugambi
select pr.patient_id, pr.patient_name  from patient_records pr  
where pr.doctor_name ilike 'Dr. Mugambi'
group by patient_id;

-- 8. Dr. Mutua
select pr.patient_id, pr.patient_name  from patient_records pr  
where pr.doctor_name ilike 'Dr. Mutua'
group by patient_id;

-- 9. Dr. Mwangi
select pr.patient_id, pr.patient_name  from patient_records pr  
where pr.doctor_name ilike 'Dr. Mwangi'
group by patient_id;

-- 10. Dr. Njeri
select pr.patient_id, pr.patient_name  from patient_records pr  
where pr.doctor_name ilike 'Dr. Njeri'
group by patient_id;

-- 11. Dr. Obuya
select patient_id, patient_name from patient_records pr 
where pr.doctor_name ilike 'Dr. Obuya'
group by patient_id;

-- 12. Dr. Odhiambo
select pr.patient_id, pr.patient_name  from patient_records pr  
where pr.doctor_name ilike 'Dr. Odhiambo'
group by patient_id;

-- 13. Dr. Otieno
select pr.patient_id, pr.patient_name  from patient_records pr  
where pr.doctor_name ilike 'Dr. Otieno'
group by patient_id;

-- 14. Dr. Ouma
select pr.patient_id, pr.patient_name  from patient_records pr  
where pr.doctor_name ilike 'Dr. Ouma'
group by patient_id;

-- 15. Dr. Wanjiru
select patient_id, patient_name from patient_records pr 
where pr.doctor_name ilike 'Dr. Wanjiru'
group by patient_id;

-- How many males and females did Dr. Cherono treat?
select gender, count (*) as n_patients
from patient_records pr 
where doctor_name ilike 'Dr. Cherono'
group by gender;

-- What hospital department(s) is Dr. Wanjiru in?
select hospital_department from patient_records pr 
where pr.doctor_name ilike 'Dr. Wanjiru'
group by hospital_department;

-- What hospital department(s) is Dr. Ouma in?
select hospital_department from patient_records pr 
where pr.doctor_name ilike 'Dr. Ouma'
group by hospital_department;

-- What hospital department(s) is Dr. Atieno in?
select hospital_department from patient_records pr 
where pr.doctor_name ilike 'Dr. Atieno'
group by hospital_department;

-- What hospital department(s) is Dr. Odhiambo in?
select hospital_department from patient_records pr 
where pr.doctor_name ilike 'Dr. Odhiambo'
group by hospital_department;
