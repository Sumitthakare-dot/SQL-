CREATE DATABASE Office

CREATE TABLE Employeedetails(
EmployeeID INT PRIMARY KEY,
EmployeeName VARCHAR (50),
Department VARCHAR (20),
Email VARCHAR(255),
PhoneNumber VARCHAR(15),
Salary DECIMAL(10, 2)
);


INSERT INTO Employeedetails
(EmployeeID,EmployeeName,Department,Email,PhoneNumber,Salary)
VALUES
(1,'Aniket Raj','HR','aniket.raj@example.com','9876543210',50000.00),
(2, 'John Doe', 'IT', 'john.doe@example.com','1234567890', 55000.00),
(3,'Aniket Raj','HR','aniket.raj@example.com','9876543210',50000.00),
(4, 'John Doe', 'IT', 'john.doe@example.com','1234567890', 55000.00),
(5,'Sneha Gupta','Finance','sneha.gupta@example.com','9574754512',65000.00),
(6,'Akash Singh','Finance','akash.sigh@example.com','5245454265',75000.00);





SELECT * FROM Employeedetails;

---APPROACH 1

SELECT EmployeeName,Email,count(*) AS Duplicatecount
FROM Employeedetails
GROUP BY EmployeeName,Email
HAVING count(*)>1;


---APPROACH 2
---USING WINDOW FUNCTION

WITH CTE AS(
SELECT *,
    ROW_NUMBER() OVER(PARTITION BY EmployeeName, Email ORDER BY EmployeeID) AS RoW_Num
FROM Employeedetails
)
SELECT*
FROM CTE
WHERE RoW_Num>1;

---APPROACH 3
---INNER JOIN

SELECT DISTINCT e1.EmployeeName, e1.Email
FROM Employeedetails AS e1
INNER JOIN Employeedetails AS e2 ON
e1.EmployeeName=e2.EmployeeName AND e1.EmployeeID<>e2.EmployeeID

