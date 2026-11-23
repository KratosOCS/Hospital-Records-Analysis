set search_path to hospital;
show search_path;

select * from patient_records pr;

/*The total number of patients grouped by gender*/
SELECT gender, COUNT(*) AS n_patients
FROM patient_records
GROUP BY gender;

/*Total number of patients grouped by departments*/
select hospital_department, count (*) as n_patients
from patient_records pr 
group by hospital_department;

/*Number of patients grouped by payment status*/
select payment_status, count (*) as n_patients
from patient_records pr 
group by payment_status;

/*Number of patients grouped by payment treatment plan*/
select treatment_plan, count (*) as n_patients
from patient_records pr 
group by pr.treatment_plan;

/*Treatment plans grouped*/
select treatment_plan from patient_records pr 
group by pr.treatment_plan;

/*Doctors and the number of patients they treated each*/
select doctor_name, count(*) as n_patients
from patient_records
group by doctor_name;

/* All diagnosis*/
select diagnosis from patient_records pr 
group by diagnosis;

/* Bills grouped by departments */
select hospital_department, SUM(bill_amount) as total_bill
from patient_records pr 
group by hospital_department;

/* Orthopedics department patients' payment status */
SELECT payment_status, count (*) as n_patients
FROM patient_records
WHERE hospital_department ILIKE 'Orthopedics'
GROUP BY payment_status;