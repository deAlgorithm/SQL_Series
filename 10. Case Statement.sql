-- CASE STATEMENTS

SELECT first_name,
last_name,
age,
CASE
	WHEN age <= 30 THEN 'Young'
    WHEN age BETWEEN 31 AND 50 THEN 'Old'
    WHEN age >= 50 THEN 'On Death Door'
END AS age_bracket
FROM parks_and_recreation.employee_demographics;

-- Pay Increase and Bonus
-- < 50000 = 5% 
-- > 50000 = 7% 
-- Finance = 10%

SELECT first_name,
last_name,
salary,
CASE
	WHEN salary < 50000 THEN  salary * 1.05
    WHEN salary > 50000 THEN  salary * 1.07
END as NEW_SALARY,
CASE
	WHEN dept_id = 6 THEN SALARY * 10
END AS Bonus
FROM parks_and_recreation.employee_salary
;
select *
from parks_and_recreation.employee_demographics;