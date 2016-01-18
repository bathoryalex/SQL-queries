SELECT employee_id, REVERSE(SUBSTR(REVERSE(email),4)) AS "E-mail without last 3 chars"
FROM employees;

SELECT location_id, street_address
FROM locations 
WHERE LENGTH(street_address) = (SELECT MIN(LENGTH(street_address)) FROM locations);

SELECT first_name AS "First name", LENGTH(first_name) AS "Length of first name"
FROM employees
WHERE first_name LIKE "A%" OR first_name LIKE "J%" OR first_name LIKE "M%"
GROUP BY first_name;