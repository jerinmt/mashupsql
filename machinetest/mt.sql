CREATE TABLE employee (
    id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(15), department VARCHAR(15), leaves INTEGER
);
INSERT INTO employee (name, department, leaves)
VALUES ('Raju', 'Sales', 1), ('Sangeetha', 'Sales', 3), ('Vinay', 'Operations', 8), ('Abey', 'Packing', 2), ('Thomas', 'Packing', 1), ('Muneer', 'Operations', 7), ('Aparna', 'Sales', 3), ('Abid', 'Operations', 9), ('Fathima', 'Sales', 11), ('Varghese', 'Operations', 14);
CREATE TABLE exam (id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
employee_id INTEGER REFERENCES employee(id), exam_status VARCHAR(4));
INSERT INTO exam (employee_id, exam_status) VALUES (2, 'Pass'), (5, 'Fail'), (1, 'Fail'), (8, 'Pass'), (3, 'Pass'), (1, 'Pass'), (6, 'Fail'), (9, 'Pass'), (10, 'Pass');
--questions
--employees with more than 5 leaves and in sales
SELECT name 
FROM employee 
WHERE leaves > 5 AND department = 'Sales';
--number of employees in operations
SELECT count(department) AS "Number of employees in Operations Department" 
FROM employee 
WHERE department='Operations';
--number of employees in each department
SELECT department, count(department) AS "Number of employees" 
FROM employee 
GROUP BY department;
