SELECT DISTINCT department_id 
FROM employees;

SELECT employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id 
FROM employees ORDER BY first_name DESC;

SELECT SUM(salary) 
FROM  employees;

SELECT MIN(salary), MAX(salary) 
FROM employees

SELECT AVG(salary)
FROM employees

SELECT COUNT(first_name)
FROM employees

SELECT COUNT(DISTINCT job_id)
FROM employees

SELECT UPPER(first_name)
FROM employees

SELECT SUBSTR(first_name,1,3)
FROM employees

SELECT CONCAT(first_name, " ", last_name)
FROM employees

SELECT TRIM(first_name)
FROM employees

SELECT LENGTH(CONCAT(first_name, last_name))
FROM employees

SELECT * 
FROM employees
LIMIT 10