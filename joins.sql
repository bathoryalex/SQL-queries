SELECT departments.department_name, departments.location_id, locations.street_address, locations.city, locations.state_province, countries.country_name
FROM departments AS departments
INNER JOIN locations AS locations
ON departments.location_id = locations.location_id
INNER JOIN countries AS countries
ON locations.country_id = countries.country_id;

SELECT employees.first_name, employees.last_name, departments.department_id, departments.department_name
FROM employees AS employees
INNER JOIN departments AS departments
ON employees.department_id = departments.department_id;

SELECT employees.first_name, employees.last_name, jobs.job_id, departments.department_id, departments.department_name
FROM employees AS employees
INNER JOIN departments AS departments
ON employees.department_id = departments.department_id
INNER JOIN jobs AS jobs
ON employees.job_id = jobs.job_id
INNER JOIN locations AS locations
ON departments.location_id = locations.location_id
WHERE locations.city = "London";

SELECT departments.department_name, COUNT(employees.first_name) AS number_of_employees
FROM departments AS departments
INNER JOIN employees AS employees
ON employees.department_id = departments.department_id
GROUP BY departments.department_id;

SELECT employees.first_name, employees.last_name, employees.hire_date
FROM employees  AS employees
INNER JOIN (SELECT first_name, last_name, hire_date FROM employees WHERE last_name = "Jones") AS base
ON employees.hire_date > base.hire_date;