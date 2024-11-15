SELECT *
FROM parks_and_recreation.employee_salary
WHERE first_name = 'Leslie';

SELECT *
FROM parks_and_recreation.employee_salary
WHERE salary <= 50000;

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE gender != 'Female';

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1985-01-01';


-- AND OR NOT -- LOGICAL OPERATORS

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1985-01-01'
AND gender = 'male'
;

-- LIKE STATEMENT--
-- % AND _
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'a%'
;

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date LIKE '1989%'
;