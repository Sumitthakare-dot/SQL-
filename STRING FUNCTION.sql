CREATE DATABASE HR_Database;



CREATE TABLE HRanalyst (
    EmpID INT PRIMARY KEY,
    Age INT,
    AgeGroup VARCHAR(20),
    Attrition VARCHAR(3),
    BusinessTravel VARCHAR(50),
    DailyRate DECIMAL(10,2),
    Department VARCHAR(50),
    DistanceFromHome INT,
    Education INT,
    EducationField VARCHAR(50),
    EmployeeCount INT,
    EmployeeNumber INT,
    EnvironmentSatisfaction INT,
    Gender VARCHAR(10),
    HourlyRate DECIMAL(10,2),
    JobInvolvement INT,
    JobLevel INT,
    JobRole VARCHAR(50),
    JobSatisfaction INT,
    MaritalStatus VARCHAR(20),
    MonthlyIncome DECIMAL(10,2),
    SalarySlab VARCHAR(20),
    MonthlyRate DECIMAL(10,2),
    NumCompaniesWorked INT,
    Over18 VARCHAR(3),
    OverTime VARCHAR(3),
    PercentSalaryHike DECIMAL(5,2),
    PerformanceRating INT,
    RelationshipSatisfaction INT,
    StandardHours INT,
    StockOptionLevel INT,
    TotalWorkingYears INT,
    TrainingTimesLastYear INT,
    WorkLifeBalance INT,
    YearsAtCompany INT,
    YearsInCurrentRole INT,
    YearsSinceLastPromotion INT,
    YearsWithCurrManager INT
);


INSERT INTO HRanalyst VALUES
(1, 35, '31-40', 'No', 'Travel_Rarely', 1100.00, 'Sales', 5, 3, 'Marketing', 1, 101, 4, 'Male', 45.50, 3, 2, 'Sales Executive', 3, 'Married', 6500.00, 'Medium', 20000.00, 2, 'Yes', 'No', 12.50, 3, 4, 80, 1, 10, 3, 3, 7, 4, 2, 5),
(2, 28, '21-30', 'No', 'Travel_Frequently', 950.00, 'Research & Development', 10, 4, 'Life Sciences', 1, 102, 3, 'Female', 32.75, 2, 1, 'Research Scientist', 4, 'Single', 4800.00, 'Low', 18500.00, 1, 'Yes', 'Yes', 11.00, 3, 2, 80, 0, 3, 2, 2, 2, 1, 1, 1),
(3, 42, '41-50', 'Yes', 'Non-Travel', 1200.00, 'Human Resources', 1, 2, 'Human Resources', 1, 103, 2, 'Female', 55.00, 2, 3, 'HR Manager', 1, 'Divorced', 8500.00, 'High', 22000.00, 4, 'Yes', 'No', 15.00, 4, 1, 80, 2, 15, 1, 2, 10, 5, 3, 7);


SELECT * FROM HRanalyst;

SELECT UPPER(businesstravel),businesstravel FROM HRanalyst
SELECT LOWER(businesstravel),businesstravel FROM HRanalyst
SELECT LENGTH(businesstravel),businesstravel FROM HRanalyst 
SELECT SUBSTRING(businesstravel,1 ,3),businesstravel FROM HRanalyst 
SELECT CONCAT(businesstravel,department),businesstravel,department FROM HRanalyst 
SELECT REPLACE(businesstravel,'Travel','COMON'),businesstravel FROM HRanalyst
SELECT TRIM(businesstravel),businesstravel FROM HRanalyst
