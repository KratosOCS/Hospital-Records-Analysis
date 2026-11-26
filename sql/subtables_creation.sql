show search_path;
set search_path to hospital;

select * from patient_records;

-- Viewing structure of my table
select column_name, data_type
FROM information_schema.columns
WHERE table_schema = 'hospital'
AND table_name = 'patient_records'
ORDER BY ordinal_position;

-- Creating doctors table
create table doctors (
    doctor_id serial primary key,
    doctor_name varchar(100) unique not null
);

select * from doctors;

-- Populating the doctors table that we have created
insert into doctors (doctor_name)
select distinct doctor_name from patient_records
order by doctor_name;

-- Creating departments table
create table departments (
department_id serial primary key, 
department_name varchar (100) unique not null
);

-- Populating the department table
insert into departments (department_name)
select distinct hospital_department from patient_records
order by hospital_department;

select * from departments;

-- Creating the patients table
create table patients (
    patient_id integer primary key,
    patient_name varchar(100) not null,
    gender varchar(20),
    age integer,
    phone_number text,
    insurance_provider varchar(100)
);

-- Populating patients table
insert into patients (
    patient_id,
    patient_name,
    gender,
    age,
    phone_number,
    insurance_provider
)
select distinct
    patient_id,
    patient_name,
    gender,
    age,
    phone_number,
    insurance_provider
from patient_records
order by patient_id;

select * from patients;

-- Creating visits table
create table visits (
    visit_id serial primary key,
    patient_id integer not null,
    doctor_id integer not null,
    department_id integer not null,
    date_of_visit date,
    diagnosis varchar(255),
    treatment_plan varchar(255),
    bill_amount numeric,
    payment_status varchar(50),
    
    constraint fk_patient
        foreign key (patient_id)
        references patients(patient_id),

    constraint fk_doctor
        foreign key (doctor_id)
        references doctors(doctor_id),

    constraint fk_department
        foreign key (department_id)
        references departments(department_id)
);

-- Populating the visits table
insert into visits (
    patient_id,
    doctor_id,
    department_id,
    date_of_visit,
    diagnosis,
    treatment_plan,
    bill_amount,
    payment_status
)
select
    pr.patient_id,
    d.doctor_id,
    dp.department_id,
    pr.date_of_visit,
    pr.diagnosis,
    pr.treatment_plan,
    pr.bill_amount,
    pr.payment_status
from patient_records pr
join doctors d
    on pr.doctor_name = d.doctor_name
join departments dp
    on pr.hospital_department = dp.department_name;

select * from visits;




