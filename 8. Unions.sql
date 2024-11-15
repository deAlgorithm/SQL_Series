-- Union

SELECT first_name, last_name
FROM parks_and_recreation.employee_demographics
UNION 
SELECT first_name, last_name
FROM parks_and_recreation.employee_salary
;

SELECT first_name, last_name
FROM parks_and_recreation.employee_demographics
UNION ALL
SELECT first_name, last_name
FROM parks_and_recreation.employee_salary
;


SELECT first_name, last_name, 'Old Man' AS Label
FROM parks_and_recreation.employee_demographics
WHERE age > 40 AND gender = 'Male'
UNION
SELECT first_name, last_name, 'Old Lady' AS Label
FROM parks_and_recreation.employee_demographics
WHERE age > 40 AND gender = 'FeMale'
UNION
SELECT first_name, last_name, "Highly Paid Employee" AS Label
FROM parks_and_recreation.employee_salary
WHERE salary > 70000
ORDER BY first_name,last_name
;