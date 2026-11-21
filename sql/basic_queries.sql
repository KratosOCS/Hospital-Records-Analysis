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
