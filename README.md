# Employee Data Cleaning Assignment

## 📋 Assignment Objective
This project focuses on cleaning and transforming employee data based on specific requirements. The primary goal was to handle missing values, standardize column formats, and create new derived columns.

---

## 🔍 Data Cleaning Steps

1. **Missing Values Handling**
   - Filled missing `Name` values with `"Unknown"`.
   - Filled missing `Department` values with `"Unassigned"`.
   - Imputed missing `Salary` values with the dataset's average salary.
   - Removed rows with missing `Age` or `DOB` values.

2. **Standardizing Column Formats**
   - Converted `DOB` and `Joining Date` columns to proper **Date** format (`YYYY-MM-DD`).
   - Converted `Performance Score` column into a **factor variable**.

3. **Derived Columns Creation**
   - Calculated **Tenure** (years since joining) using the formula:  
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

- `cleaned_employees.csv`: Contains the cleaned dataset with all transformations applied.
- `data_cleaning.R`: Script used for cleaning, transforming, and exporting the data.

---

## ✅ Verification Checks

1. No missing values remain in critical columns.
2. All date columns are in the correct format (`YYYY-MM-DD`).
3. Tenure and Experience Level have been correctly calculated based on employee joining date.

---

## 🔗 Author

**Name:** Raj Kushwaha  
**Project:** Employee Data Cleaning & Transformation  
**Submission Date:** [25-02-2025]

