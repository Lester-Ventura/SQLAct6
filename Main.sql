--Enter SQL Codes here

-- Part 1:

-- a. --
-- Find the titles of the courses in the Computer Science department that have 3 Credits.

SELECT TITLE
FROM COURSE 
WHERE DEPT_NAME LIKE "Comp. Sci." AND CREDITS = 3; 


-- b.
-- Find the IDs of all students who were taught by instructor Einstein; make sure no
-- duplicates are shown in the result(s).

SELECT s_ID as ID
FROM ADVISOR 
WHERE i_ID = 22222; -- this is einstein's instructor ID