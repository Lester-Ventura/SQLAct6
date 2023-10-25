-- a. Increase the salary of each instructor in the Computer Science department by
-- 10%.

UPDATE instructor 
SET salary = salary * 1.10
WHERE dept_name = "Comp. Sci."
