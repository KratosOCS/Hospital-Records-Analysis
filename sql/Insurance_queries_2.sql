show search_path;
set search_path to hospital;

select * from patient_records pr;

/* Listing all the insurance providers */
select insurance_provider from patient_records pr 
group by insurance_provider
order by insurance_provider asc;

/* Bills according to each insurance provider */
select insurance_provider, SUM(bill_amount) as total_bill
from patient_records pr 
group by insurance_provider;

/* Payment status from each insurance provider
 * 1. Britam
 */
select payment_status, SUM(bill_amount) as total_bill
from patient_records pr 
where pr.insurance_provider ilike 'Britam'
group by payment_status;

/* 2. NHIF*/
select payment_status, SUM(bill_amount) as total_bill
from patient_records pr 
where pr.insurance_provider ilike 'NHIF'
group by payment_status;

/* 3. Jubilee */
select payment_status, SUM(bill_amount) as total_bill
from patient_records pr 
where pr.insurance_provider ilike 'Jubilee'
group by payment_status;

/* 4. APA Insurance */
select payment_status, SUM(bill_amount) as total_bill
from patient_records pr 
where pr.insurance_provider ilike 'APA Insurance'
group by payment_status;

/* 5. AAR Healthcare */
select payment_status, SUM(bill_amount) as total_bill
from patient_records pr 
where pr.insurance_provider ilike 'AAR Healthcare'
group by payment_status;

/* 6. None */
select payment_status, SUM(bill_amount) as total_bill
from patient_records pr 
where pr.insurance_provider ilike 'None'
group by payment_status;