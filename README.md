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

- ✅ Free of duplicate records
- ✅ Free of missing values
- ✅ Properly formatted for analysis
- ✅ Simplified with a single **Full Name** column
- ✅ Ready for exploratory data analysis (EDA)