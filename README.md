# Hospital Records Analysis

## Project Overview

This project focuses on analyzing hospital records to uncover insights 
from healthcare data.

The project will demonstrate the process of transforming raw data into 
meaningful information using data analytics tools.

## Dataset

The dataset contains hospital records that will be explored and analyzed 
throughout this project.

## Tools Used

- Microsoft Excel
- SQL
- Power BI

## Project Goals

- Understand and explore healthcare data
- Clean and prepare data for analysis
- Design and query a database using SQL
- Create visualizations and dashboards

## Project Progress

- [x] Add Hospital Records dataset
- [ ] Data exploration and cleaning
- [ ] Database creation
- [ ] SQL analysis
- [ ] Data visualization


## Phase 1: Data Understanding

### Dataset Overview

The dataset contains hospital patient records that will be analyzed using Excel, SQL, and Power BI.

### Dataset Structure

The dataset consists of:

- 672 patient records
- 14 columns

### Data Fields

| Column | Description |
|---|---|
| Patient ID | Unique identifier for each patient |
| First Name | Patient first name |
| Last Name | Patient surname |
| Gender | Patient gender |
| Age | Patient age |
| Phone Number | Patient contact information |
| Date of Visit | Date of hospital visit |
| Diagnosis | Patient diagnosis |
| Treatment Plan | Treatment provided |
| Doctor Name | Assigned doctor |
| Hospital Department | Hospital department |
| Insurance Provider | Insurance provider |
| Bill Amount (KES) | Patient billing amount |
| Payment Status | Status of payment |

### Initial Observations

- The dataset is structured in a tabular format.
- Each row represents an individual patient record.
- The dataset contains demographic, medical, and financial information.
- The data will undergo cleaning before analysis.

## Phase 2: Data Cleaning

The second phase of the project focused on preparing the dataset for analysis by improving its quality, consistency and readability.

### Data Cleaning Tasks Performed
### Creating a Working Copy
Before making any changes, a new worksheet named Cleaned Data was created by copying all records from the original worksheet. This ensured that the raw dataset remained unchanged and could always be referenced if needed.

#### Duplicate Records
- Checked the dataset for duplicate records.
- **Result:** No duplicate records were found.

#### Missing Values
- Reviewed all columns for blank or missing values.
- **Result:** No missing values were identified.

#### Data Formatting
- Converted the **Phone Number** column to a numeric format.
- Formatted the **Bill Amount** column as **Kenyan Shillings (KSh)** currency.

#### Feature Engineering
To improve readability, a new **Full Name** column was created by combining the patient's first and last names using the Excel `CONCAT` function.

Example:

```excel
=CONCAT(B2," ",C2)
```

After verifying the results, the original **First Name** and **Last Name** columns were hidden to eliminate redundancy.

#### Worksheet Formatting
- Adjusted column widths to ensure all values are clearly visible and easy to read.

### Summary

The dataset is now:

- Free of duplicate records
- Free of missing values
- Properly formatted for analysis
- Simplified with a single **Full Name** column
- Ready for exploratory data analysis (EDA)

## Phase 3: Exploratory Data Analysis
In this phase of my Hospital Records Analysis project, I moved from data cleaning to Exploratory Data Analysis (EDA) using Microsoft Excel.I created a separate worksheet named EDA. It contains the following:
- Key Performance Indicators (KPI)
- Pivot tables
- Findings from the analysis

Separating these analysis from the raw and cleaned data makes the workbook much easier to manage and reflects a structured workflow. 

### KPIs
I started by calculating some important metrics that provide a quick overview of the dataset.

These included:

- Total number of patients
- Average patient age
- Youngest patient
- Oldest patient
- Total bill amount
- Average bill amount
- Highest bill amount
- Lowest bill amount

Creating these Key Performance Indicators gave me a high-level understanding of the data before exploring it further.

### Pivot Tables
I used PivotTables to answer questions such as:

- Which department treated the most patients?
- Which gender visited the hospital most frequently?
- Which payment status occurred the most?
- Which diagnosis appeared most often?
What I learnt during this process was choosing the correct calculation.

Initially, I summarised the Patient ID field using Sum, which produced incorrect results because Patient IDs are identifiers—not values that should be added together. After changing the Value Field Settings to Count, the PivotTables correctly showed the number of patients in each category. It was a small change, but an important reminder that understanding the data is just as important as knowing how to use the software.
The next step will be to create charts from these findings before importing the dataset into SQL for more advanced analysis.

## Phase 4: Building Excel Dashboard
With the analysis complete, I designed an interactive dashboard to present the findings. It includes:
The dashboard includes:

KPI cards for:
- Total Patients
- Average Patient Age
- Total Bill Amount
- Highest Bill Amount

Visualisations  showing:
- Patients by Department
- Gender Distribution
- Payment Status Distribution
- Diagnosis Analysis

One of my favourite parts was using slicers. These allow the entire dashboard to update instantly based on the selected filters, making it much easier to explore the data from different perspectives. Building this feature helped me appreciate how interactive reports improve the user experience and support faster decision-making. I added slicers for:

- Hospital Department
- Gender
- Payment Status
- Diagnosis

Beyond creating charts, I wanted the dashboard to have a clean and professional appearance.To achieve this, I:

- Removed Excel gridlines to create a cleaner layout.
- Hid the row and column headings so the dashboard looked more like a business report than a spreadsheet.
- Used consistent fonts and spacing to improve readability.
- Organized the KPIs and charts into a structured layout that is easy to understand at a glance.

These small design improvements made a significant difference in the overall presentation of the dashboard.
The Excel phase of my project is now complete.

## Phase 5: SQL
One of my goals for this project is to analyze the same dataset using different tools. By doing this, I can compare how Excel and SQL solve the same business problems while building practical skills in both.

### Creating a Database
Using PostgreSQL and DBeaver, I created a new database named:

hospital_analysis

This database will store everything related to my project as I continue building. It will establish a place where the data will live before any tables or queries are created.

### Creating a Schema
After creating the database, I created a schema named:

hospital

A database is the overall container, while a schema helps organise related database objects such as tables, views, and functions. Using a dedicated schema makes the project more organised and easier to manage as it grows.

### Creating Database Table
Before importing the data, I first created a table in my SQL environment. I designed the table structure based on the columns available in the dataset, ensuring that each field had the correct data type and could store the information accurately.

#### Importing the Hospital Analysis dataset
After creating the table, I converted my Excel worksheet into a CSV file and imported it into the database after I verified that the data was loaded correctly.One of the things I paid attention to was ensuring that:

- The column names matched correctly
- Data types were compatible
- The number of records imported matched the original dataset
- The information was preserved accurately

Seeing the data appear correctly inside the SQL table was a great confirmation that the preparation steps had been done properly. Now that the dataset is successfully stored in SQL, the next phase will involve exploring the data using SQL queries.

#### Writing SQL basic queries
Before running any queries, I made sure I was working in the correct schema.
``SET search_path TO hospital;
SHOW search_path;``

This allowed me to reference my tables without having to specify the schema name every time. Once I confirmed the data was there, I started asking simple analytical questions.

#### How many patients are there by gender?
```
SELECT gender,COUNT(*) AS n_patients
FROM patient_records
GROUP BY gender;
```

This was my first experience using the ``COUNT()``
 aggregate function together with ``GROUP BY``. Instead of listing every patient, SQL summarised  the data into meaningful groups.

#### Counting patients by department
Next, I wanted to understand how patients were distributed across hospital departments.

```
SELECT hospital_department, COUNT(*) AS n_patients
FROM patient_records
GROUP BY hospital_department;
```

This query quickly showed how many patients belonged to each department without manually counting rows.

#### Analysing payment status
I then grouped patients based on their payment status.

```
SELECT payment_status, COUNT(*) AS n_patients
FROM patient_records
GROUP BY payment_status;
```

This simple query demonstrates how SQL can instantly summarise business information that would take much longer to calculate manually.

#### Looking at treatment plans
I also wanted to understand the different treatment plans stored in the dataset.

```
SELECT treatment_plan, COUNT(*) AS n_patients
FROM patient_records
GROUP BY treatment_plan;
```

#### Listing treatment plans
```
SELECT treatment_plan
FROM patient_records
GROUP BY treatment_plan;
```

The results showed treatment plans such as:

- Admission
- Medication
- Lab Tests
- Follow-up
- Surgery
- Physiotherapy

It was satisfying to see SQL return only the distinct treatment categories that exist in the dataset.

What I learned:
This exercise helped me understand several important SQL concepts:

1. Using ``COUNT()`` to summarise data.
2. Using ``GROUP BY`` to organise records into meaningful categories. 
3. Creating readable output with column aliases.
4. Writing cleaner queries by setting the schema path.
5. Beginning to think like a data analyst by asking questions before writing queries.

Although these are considered beginner SQL queries, they form the foundation of almost every data analysis project. If you're just starting your SQL journey, keep practicing. The simple queries you write today become the building blocks for much more advanced analysis tomorrow.

### Analyzing hospital insurance data
#### 1. Identifying all the insurance providers

```
SELECT insurance_provider
FROM patient_records
GROUP BY insurance_provider
ORDER BY insurance_provider ASC;
```

This query returned a clean list of unique insurance providers instead of displaying thousands of repeated values. It also introduced me to combining:

``GROUP BY``
``ORDER BY`` for alphabetical sorting

Simple but incredibly useful when exploring unfamiliar data.

#### 2. Calculating total hospital bills per Insurance provider

```
SELECT insurance_provider,SUM(bill_amount) AS total_bill
FROM patient_records
GROUP BY insurance_provider;
```
Instead of counting records, the ``SUM()`` aggregate function calculated the total billing amount for every insurance provider in just one query.

#### 3. Filtering the hospital data
I wanted to get more data on each insurance provider individually. I opted to use filtering to get further information from each insurance provider. For example, to analyze Britam, I wrote:
```
SELECT payment_status,SUM(bill_amount) AS total_bill
FROM patient_records
WHERE insurance_provider ILIKE 'Britam'
GROUP BY payment_status;
```
Using the ``WHERE`` clause allowed me to focus on one insurance provider without being distracted by the rest of the dataset. One thing I learned was the usefulness of ``ILIKE`` in PostgreSQL. Unlike ``LIKE``, ``ILIKE`` performs case-insensitive matching. That means: ``Britam``, ``BRITAM``and ``britam``, would all return the same results. This makes queries more flexible, especially when datasets contain inconsistent capitalization. Repeating the same approach for NHIF, Jubilee, APA Insurance, AAR Healthcare, and uninsured patients helped reinforce an important lesson.