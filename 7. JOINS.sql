-- JOINS 

SELECT *
FROM parks_and_recreation.employee_demographics;

SELECT *
FROM parks_and_recreation.employee_salary;


-- INNER JOIN
-- IT JOINS TWO TABLE BASED ON SIMILAR ROWS
SELECT DEM.employee_id,age,occupation
FROM parks_and_recreation.employee_demographics AS DEM
INNER JOIN parks_and_recreation.employee_salary AS SAL
	ON DEM.employee_id = SAL.employee_id
;


-- OUTER JOIN
-- LEFT JOIN : IT TAKES VALUES FROM THE LEFT TABLE AND FIND IT MATCHES TO JOIN IN THE RIGHT TABLE
-- RIGHT JOIN : OPPOSITE TO LEFT JOIN
-- IT JOINS TWO TABLE BASED ON SIMILAR ROWS

SELECT *
FROM parks_and_recreation.employee_demographics AS DEM
LEFT JOIN parks_and_recreation.employee_salary AS SAL
	ON DEM.employee_id = SAL.employee_id
;

SELECT *
FROM parks_and_recreation.employee_demographics AS DEM
RIGHT JOIN parks_and_recreation.employee_salary AS SAL
	ON DEM.employee_id = SAL.employee_id
;

-- SELF JOINS
-- FIND SECRET SAANTA
SELECT EMP1.employee_id AS EMP_SANTA,
EMP1.first_name AS FIRST_NAME_SANTA,
EMP1.last_name AS LAST_NAME_SANTA,
EMP2.employee_id AS EMP_NAME,
EMP2.first_name AS FIRST_NAME,
EMP2.last_name AS LAST_NAME
FROM parks_and_recreation.employee_salary EMP1
JOIN parks_and_recreation.employee_salary EMP2
	ON EMP1.employee_id + 1 = EMP2.employee_id;
    
    
-- JOINING MULTIPLE TABLES TOGETHER
 SELECT *
FROM parks_and_recreation.employee_demographics AS DEM
INNER JOIN parks_and_recreation.employee_salary AS SAL
	ON DEM.employee_id = SAL.employee_id
INNER JOIN parks_and_recreation.parks_departments AS PD
	ON SAL.dept_id = PD.department_id
;
