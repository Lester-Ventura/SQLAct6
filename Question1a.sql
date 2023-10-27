-- 1a.
-- Find the titles of the courses in the Computer Science department that have 3 Credits.
SELECT TITLE 
FROM COURSE 
WHERE DEPT_NAME = "Comp. Sci." AND CREDITS = 3; 
