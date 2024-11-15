-- 	LIMIT AND ALIASING
SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY age DESC
LIMIT 3,1
;


-- ALIASING

SELECT gender, AVG(age) AS AVG_AGE
FROM parks_and_recreation.employee_demographics
GROUP BY gender
HAVING AVG_AGE > 40
;