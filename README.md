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