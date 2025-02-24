# Load necessary libraries
library(readxl)
library(dplyr)
library(lubridate)

# Step 1: Load the Data and Inspect It
data <- read_excel("Employees data.xlsx")

# Step 2: Handle Missing Values
data$Name[is.na(data$Name)] <- "Unknown"
data$Department[is.na(data$Department)] <- "Unassigned"
data$Salary[is.na(data$Salary)] <- mean(data$Salary, na.rm = TRUE)
data <- data[!is.na(data$Age) & !is.na(data$DOB), ]

# Step 3: Standardize Column Formats
data$DOB <- as.Date(data$DOB, format = "%Y-%m-%d")
data$Joining_Date <- as.Date(data$Joining_Date, format = "%Y-%m-%d")
data$Performance_Score <- as.factor(data$Performance_Score)

# Step 4: Create New Derived Columns
data$Tenure <- as.numeric(difftime(Sys.Date(), data$Joining_Date, units = "days")) / 365
data$Experience_Level <- cut(data$Tenure, breaks = c(-Inf, 1, 5, 10, Inf), 
                             labels = c("Beginner", "Intermediate", "Experienced", "Veteran"))

# Save the cleaned dataset
write.csv(data, "cleaned_employees.csv", row.names = FALSE)

# Print first few rows to verify
head(data)
