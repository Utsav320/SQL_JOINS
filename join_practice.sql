-- join_practice.sql
-- Demonstrates INNER, LEFT, RIGHT, and FULL OUTER JOINs

-- ==============================================
-- FILE: join_practice.sql
-- DESCRIPTION: Demonstrates INNER, LEFT, RIGHT, and FULL OUTER JOINs
-- AUTHOR: Utsav Muskan
-- DATE: 2025-06-04
-- ==============================================

-- Step 1: Create Employees table

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50),
    DepartmentID INT
);

-- Step 2: Insert sample data into Employees

INSERT INTO Employees (EmployeeID, Name, DepartmentID) VALUES
(1, 'Alice', 10),
(2, 'Bob', 20),
(3, 'Charlie', 30),
(4, 'David', NULL);

-- Step 3: Create Departments table

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

-- Step 4: Insert sample data into Departments

INSERT INTO Departments (DepartmentID, DepartmentName) VALUES
(10, 'HR'),
(20, 'IT'),
(40, 'Marketing');

-- Step 5: Perform INNER JOIN

SELECT e.EmployeeID, e.Name, d.DepartmentName
FROM Employees e
INNER JOIN Departments d ON e.DepartmentID = d.DepartmentID;

-- Step 6: Perform LEFT JOIN

SELECT e.EmployeeID, e.Name, d.DepartmentName
FROM Employees e
LEFT JOIN Departments d ON e.DepartmentID = d.DepartmentID;

-- Step 7: Perform RIGHT JOIN

SELECT e.EmployeeID, e.Name, d.DepartmentName
FROM Employees e
RIGHT JOIN Departments d ON e.DepartmentID = d.DepartmentID;

-- Step 8: Perform FULL OUTER JOIN

-- For MySQL, use UNION of LEFT and RIGHT JOIN
SELECT e.EmployeeID, e.Name, d.DepartmentName
FROM Employees e
LEFT JOIN Departments d ON e.DepartmentID = d.DepartmentID
UNION
SELECT e.EmployeeID, e.Name, d.DepartmentName
FROM Employees e
RIGHT JOIN Departments d ON e.DepartmentID = d.DepartmentID;
