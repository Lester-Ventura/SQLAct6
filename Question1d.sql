-- 1d. 
-- Find all the instructors earning the highest salary.
SELECT ID, NAME
FROM INSTRUCTOR
WHERE SALARY = (
SELECT
	MAX(SALARY)
FROM
	INSTRUCTOR
);
