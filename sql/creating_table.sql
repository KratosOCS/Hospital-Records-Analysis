set search_path to hospital;
show search_path;

/*Creating the patients table*/

CREATE TABLE patient_records (
    patient_id INT PRIMARY KEY,
    patient_name VARCHAR(100) NOT NULL,
    gender VARCHAR(10) NOT NULL,
    age INT,
    phone_number TEXT,
    date_of_visit DATE,
    diagnosis VARCHAR(100),
    treatment_plan VARCHAR(100),
    doctor_name VARCHAR(100),
    hospital_department VARCHAR(100),
    insurance_provider VARCHAR(100),
    bill_amount NUMERIC(50,2),
    payment_status VARCHAR(30)
    );

/* After creating the table I imported the hospital_records data to fill the table from the cleaned data worksheet excel sheet converted into a CSV file*/

select * from patient_records pr;
