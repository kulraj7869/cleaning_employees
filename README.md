# Employee Data Cleaning Assignment

## 📋 Assignment Objective
This project focuses on cleaning and transforming employee data according to specific requirements. The main goal is to handle missing values, standardize column formats, and create new derived columns for analysis.

---

## 🔍 Data Cleaning Steps

1. **Handling Missing Values**
   - Filled missing `Name` values with **"Unknown"**.
   - Filled missing `Department` values with **"Unassigned"**.
   - Imputed missing `Salary` values with the dataset's **average salary**.
   - Removed rows where either `Age` or `DOB` was missing.

2. **Standardizing Column Formats**
   - Converted `DOB` and `Joining Date` columns to **Date format** (`YYYY-MM-DD`).
   - Converted `Performance Score` into a **factor variable** for better categorization.

3. **Creating New Derived Columns**
   - Calculated **Tenure** as the number of years since the `Joining Date`. The formula used:
     ```
     Tenure = (Current Date - Joining Date) / 365
     ```
   - Created an **Experience Level** column based on tenure:
     - Beginner: Less than 1 year
     - Intermediate: 1-5 years
     - Experienced: 5-10 years
     - Veteran: More than 10 years

---

## 📂 Output Files

- `data_cleaning.R`: Script used for cleaning, transforming, and exporting the data.
- `cleaned_employees.csv`: Contains the cleaned and processed employee dataset.

---

## ✅ Verification Checks

1. All missing values were handled as per instructions.
2. Dates in `DOB` and `Joining Date` are properly formatted (`YYYY-MM-DD`).
3. `Tenure` and `Experience Level` have been accurately calculated.
4. `Performance Score` has been converted into a factor variable and missing scores were filled with **"Average"**.

---

## 🔗 Author Details

**Name:** Raj Kushwaha  
**Project:** Employee Data Cleaning and Transformation  
**Submission Date:** [25-02-2025]

