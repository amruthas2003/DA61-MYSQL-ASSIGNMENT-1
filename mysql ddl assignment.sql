
DROP DATABASE IF EXISTS employee;

CREATE DATABASE employee;

USE employee;

CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Location (
    location_id INT AUTO_INCREMENT PRIMARY KEY,
    location VARCHAR(30) NOT NULL UNIQUE
);

CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    gender ENUM('M','F'),
    age INT CHECK (age >= 18),
    hire_date DATE DEFAULT (CURRENT_DATE),
    designation VARCHAR(100),
    department_id INT,
    location_id INT,
    salary DECIMAL(10,2),
    FOREIGN KEY (department_id)
        REFERENCES Departments(department_id),
    FOREIGN KEY (location_id)
        REFERENCES Location(location_id)
);

ALTER TABLE Employees
ADD email VARCHAR(100);

ALTER TABLE Employees
MODIFY designation VARCHAR(150);

ALTER TABLE Employees
DROP COLUMN age;

ALTER TABLE Employees
RENAME COLUMN hire_date TO date_of_joining;

RENAME TABLE Departments TO Departments_Info;

RENAME TABLE Location TO Locations;

TRUNCATE TABLE Employees;

DROP TABLE Employees;

DROP DATABASE employee;

CREATE DATABASE employee;

USE employee;

CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL UNIQUE
);

USE employee;


CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Location (
    location_id INT AUTO_INCREMENT PRIMARY KEY,
    location VARCHAR(30) NOT NULL UNIQUE
);

CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    gender ENUM('M','F'),
    age INT CHECK (age >= 18),
    hire_date DATE DEFAULT (CURRENT_DATE),
    designation VARCHAR(100),
    department_id INT,
    location_id INT,
    salary DECIMAL(10,2),
    FOREIGN KEY (department_id)
        REFERENCES Departments(department_id),
    FOREIGN KEY (location_id)
        REFERENCES Location(location_id)
);
SHOW TABLES;
INSERT INTO Departments (department_id, department_name)
VALUES
(1, 'HR'),
(2, 'Finance'),
(3, 'IT'),
(4, 'Marketing'),
(5, 'Sales');
INSERT INTO Location (location)
VALUES
('Kochi'),
('Trivandrum'),
('Calicut'),
('Chennai'),
('Bangalore');
INSERT INTO Employees
(employee_id, employee_name, gender, age, hire_date, designation, department_id, location_id, salary)
VALUES
(1, 'Arun', 'M', 25, '2024-01-10', 'HR Manager', 1, 1, 45000),
(2, 'Meera', 'F', 28, '2023-05-15', 'Accountant', 2, 2, 40000),
(3, 'Rahul', 'M', 30, '2022-08-20', 'Developer', 3, 3, 55000),
(4, 'Anjali', 'F', 26, '2024-03-12', 'Marketing Executive', 4, 4, 35000),
(5, 'Vishnu', 'M', 32, '2021-11-05', 'Sales Manager', 5, 5, 50000);
USE employee;

SHOW TABLES;
CREATE TABLE Location (
    location_id INT AUTO_INCREMENT PRIMARY KEY,
    location VARCHAR(30) NOT NULL UNIQUE
);
INSERT INTO Location (location)
VALUES
('Kochi'),
('Trivandrum'),
('Calicut'),
('Chennai'),
('Bangalore');
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    gender ENUM('M','F'),
    age INT CHECK (age >= 18),
    hire_date DATE DEFAULT (CURRENT_DATE),
    designation VARCHAR(100),
    department_id INT,
    location_id INT,
    salary DECIMAL(10,2),
    FOREIGN KEY (department_id)
        REFERENCES Departments(department_id),
    FOREIGN KEY (location_id)
        REFERENCES Location(location_id)
);
SELECT * FROM Departments;
SELECT * FROM Location;
SELECT * FROM Departments;
INSERT INTO Departments (department_id, department_name)
VALUES
(1, 'HR'),
(2, 'Finance'),
(3, 'IT'),
(4, 'Marketing'),
(5, 'Sales');
SELECT * FROM Departments;
INSERT INTO Employees
(employee_id, employee_name, gender, age, hire_date, designation, department_id, location_id, salary)
VALUES
(1, 'Arun', 'M', 25, '2024-01-10', 'HR Manager', 1, 1, 45000),
(2, 'Meera', 'F', 28, '2023-05-15', 'Accountant', 2, 2, 40000),
(3, 'Rahul', 'M', 30, '2022-08-20', 'Developer', 3, 3, 55000),
(4, 'Anjali', 'F', 26, '2024-03-12', 'Marketing Executive', 4, 4, 35000),
(5, 'Vishnu', 'M', 32, '2021-11-05', 'Sales Manager', 5, 5, 50000);
SELECT * FROM Employees;
SELECT 
    e.employee_id,
    e.employee_name,
    e.designation,
    d.department_name,
    l.location
FROM Employees e
JOIN Departments d
ON e.department_id = d.department_id
JOIN Location l
ON e.location_id = l.location_id;
SELECT employee_name, designation, salary
FROM Employees
ORDER BY salary DESC;
SELECT employee_name, designation, salary
FROM Employees
WHERE salary > 40000;
SELECT employee_name, gender, designation
FROM Employees
WHERE gender = 'F';
SELECT employee_name, age, designation
FROM Employees
WHERE age BETWEEN 25 AND 30;
SELECT AVG(salary) AS average_salary
FROM Employees;
ALTER TABLE Employees
ADD email VARCHAR(100);
ALTER TABLE Employees
MODIFY designation VARCHAR(150);
ALTER TABLE Employees
DROP COLUMN age;
ALTER TABLE Employees
RENAME COLUMN hire_date TO date_of_joining;
RENAME TABLE Departments
TO Departments_Info;
RENAME TABLE Location
TO Locations;
TRUNCATE TABLE Employees;
DROP TABLE Employees;