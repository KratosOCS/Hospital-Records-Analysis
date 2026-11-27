show search_path;
set search_path to hospital;

select * from visits v;

-- Show every hospital visit with patient, doctor, and department details
select
    v.visit_id,
    p.patient_name,
    d.doctor_name,
    dp.department_name,
    v.date_of_visit,
    v.diagnosis,
    v.treatment_plan,
    v.bill_amount,
    v.payment_status
from visits v
inner join patients p
    on v.patient_id = p.patient_id
inner join doctors d
    on v.doctor_id = d.doctor_id
inner join departments dp
    on v.department_id = dp.department_id
order by v.visit_id;


-- Instead of storing names repeatedly, we use IDs and reconstruct the information with JOINs
select v.patient_id, p.patient_name from visits v
inner join patients p 
    on v.patient_id = p.patient_id
    order by p.patient_id;

-- How many patients has each doctor treated?
select doctor_name, count(visit_id) as n_patients from visits v
inner join doctors
on v.doctor_id = doctors.doctor_id 
group by doctor_name;

-- How many patients visited each department
select department_name, count (visit_id) as n_patients from visits v 
inner join departments d 
on v.department_id = d.department_id 
group by d.department_name;


-- Average bill per department
select department_name, round (avg(bill_amount),2) as average_bill from visits v 
inner join departments d 
on v.department_id = d.department_id 
group by d.department_name;

