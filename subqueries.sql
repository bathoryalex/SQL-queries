SELECT first_name, last_name, salary
FROM employees
WHERE salary > (SELECT salary
				FROM employees
				WHERE last_name = "Bull")
				
SELECT first_name, last_name
FROM employees
WHERE job_id = "it_prog"

SELECT first_name, last_name
FROM employees
WHERE employee_id IN (SELECT manager_id FROM employees)

SELECT first_name, last_name, salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees)

SELECT main.first_name, main.last_name, main.salary
FROM employees AS main, (SELECT job_id, MIN(salary) AS mini FROM employees GROUP BY job_id) as sub
WHERE main.job_id = sub.job_id AND main.salary = sub.mini

SELECT main.first_name, main.last_name, main.salary, main.department_id
FROM employees AS main, (SELECT department_id, MIN(salary) AS mini FROM employees GROUP BY department_id) as sub
WHERE main.department_id = sub.department_id AND main.salary = sub.mini

SELECT employee_id, first_name, last_name, department_name
FROM employees, (SELECT department_id, department_name FROM departments) AS department
WHERE employees.department_id = department.department_id

SELECT * 
FROM employees
ORDER BY employee_id DESC 
LIMIT 10