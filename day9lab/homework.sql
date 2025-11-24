-- Create a new database
CREATE DATABASE company;
-- Use that database.
USE companyy;
-- Create a table named employees
CREATE TABLE employees (id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
name VARCHAR(10) NOT NULL);
INSERT INTO employees (name) VALUES ('Anjali'), ('Rohan'), ('Meena');
-- Create a table named departments
CREATE TABLE departments (emp_id INTEGER PRIMARY KEY, deparment_name VARCHAR(10) NOT NULL);
INSERT INTO departments VALUES (1, 'HR'), (2, 'IT'), (4, 'Finance');
-- Show a list of all employees along with their department name. If an employee doesn’t belong to any department, still show their name with “NULL” for the department.
SELECT employees.name, departments.deparment_name FROM employees
LEFT JOIN departments
ON employees.id = departments.emp_id;
-- Show only those employees who have a department assigned.
SELECT employees.name FROM employees
JOIN departments
ON employees.id = departments.emp_id;
-- Show all department assignments, even if the employee doesn’t exist in the employee table
SELECT departments.deparment_name, departments.emp_id, employees.name FROM employees
RIGHT JOIN departments
ON employees.id = departments.emp_id;
