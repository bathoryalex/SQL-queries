SELECT first_name, last_name, salary
FROM employees
WHERE (salary < 10000.00 OR salary > 15000.00) AND (department_id = 30 OR department_id = 50)

SELECT first_name, last_name, hire_date
FROM employees
WHERE YEAR(hire_date) = 1987

SELECT first_name
FROM employees
WHERE first_name LIKE "%b%" AND first_name LIKE "%c%"

SELECT last_name, job_id, salary
FROM employees
WHERE (job_id = "IT_PROG" OR job_id = "SH_CLERK") AND (salary <> 4500 OR salary <> 10000 OR salary <> 15000)

SELECT *
FROM employees
WHERE last_name IN ("blake", "scott", "king", "ford")