SELECT job_id, COUNT(job_id)
FROM employees
GROUP BY job_id;

SELECT manager_id, MIN(salary)
FROM employees
GROUP BY manager_id; 

SELECT department_id, SUM(salary)
FROM employees
GROUP BY department_id;

SELECT job_id, AVG(salary)
FROM employees
WHERE job_id NOT IN ("it_prog")
GROUP BY job_id;

SELECT job_id, salary
FROM employees
GROUP BY job_id
HAVING salary >= 4000;

SELECT department_id, AVG(salary)
FROM employees
GROUP BY department_id 
HAVING COUNT(department_id) > 10;