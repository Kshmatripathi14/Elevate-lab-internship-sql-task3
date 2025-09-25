-- Task 3: Writing Basic SELECT Queries
-- Internship SQL Developer Task
-- Database: Sample Company Database (employees table assumed)

-- 1. Select all columns from the employees table
SELECT * 
FROM employees;

-- 2. Select specific columns: employee_id, first_name, last_name, department
SELECT employee_id, first_name, last_name, department
FROM employees;

-- 3. Filter employees who work in 'HR' department
SELECT employee_id, first_name, last_name, department
FROM employees
WHERE department = 'HR';

-- 4. Filter employees whose salary is between 40000 and 60000
SELECT first_name, last_name, salary
FROM employees
WHERE salary BETWEEN 40000 AND 60000;

-- 5. Find employees whose name starts with 'A'
SELECT first_name, last_name
FROM employees
WHERE first_name LIKE 'A%';

-- 6. Sort employees by salary in descending order
SELECT first_name, last_name, salary
FROM employees
ORDER BY salary DESC;

-- 7. Show top 5 highest paid employees
SELECT first_name, last_name, salary
FROM employees
ORDER BY salary DESC
LIMIT 5;

-- 8. Show distinct departments
SELECT DISTINCT department
FROM employees;

-- 9. Using alias for readability
SELECT first_name || ' ' || last_name AS full_name, salary
FROM employees
ORDER BY full_name ASC;

-- 10. Show employees working either in IT or Finance
SELECT first_name, last_name, department
FROM employees
WHERE department IN ('IT', 'Finance');
