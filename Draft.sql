-- 1a. --
-- Find the titles of the courses in the Computer Science department that have 3 Credits.
1a.) SELECT dept_name FROM department WHERE lower(dept_name)= '%sci.%';

-- 1b.
-- Find the IDs of all students who were taught by instructor Einstein; make sure no
-- duplicates are shown in the result(s).

1b.) 

-- 1c. 
-- Find the highest salary of any instructor. 

1c.) SELECT MAX(salary) from instructor;

-- 1d. 
-- Find all the instructors earning the highest salary.
1d.) SELECT ID, NAME FROM INSTRUCTOR 
     WHERE SALARY = (SELECT MAX(SALARY) FROM INSTRUCTOR);
-- 1e.
-- Find the enrollment of each section offered in Fall 2017.
1e.) SELECT s.course_id,s.sec_id, 
  (SELECT COUNT(ID) FROM takes t WHERE t.year = s.year AND t.semester = s.semester 
  AND t.course_id = s.course_id AND t.sec_id = s.sec_id) AS enrollment FROM section 
  s WHERE s.semester = ‘Fall’ AND s.year = 2010;
-- 1f. 
-- Find the maximum enrollment, across all sections, in Fall 2017.

-- 1g. 
-- Find the sections that had the maximum enrollment in Fall 2017.

-- 2. 
-- Suppose a relation 𝑔𝑟𝑎𝑑𝑒_𝑝𝑜𝑖𝑛𝑡𝑠(𝑔𝑟𝑎𝑑𝑒, 𝑝𝑜𝑖𝑛𝑡𝑠) that provide the conversion from
-- letter grades to numeric scores. The conversion can be seen below:
/*𝐴 = 4 points
𝐴 ― = 3.7 points
𝐵 + = 3.3 points
𝐵 = 3 points
𝐵 ― = 2.7 points
𝐶 + = 2.3 points
𝐶 = 2 points
𝐷 = 1 point
𝐹 = 0 point*/

-- 2a. 
-- Find the total grade points earned by the student with ID '66054 across all
-- courses taken by the student.

-- 2b.
-- Find the grade point average for the student above (GPA is the total grade point
-- divided by the total credits for the associated courses).

-- 3.
-- Write the following inserts, deletes, or updates in SQL:

-- 3a.
-- Increase the salary of each instructor in the Computer Science department by
-- 10%.

-- 3b. Delete all the courses that have never been offered.

-- 3c. 
-- Insert every student whose 𝑡𝑜𝑡_𝑐𝑟𝑒𝑑 attribute is greater than 100 as an
-- instructor in the same department with a salary of $10,000.

-- 4a. 
-- Write a query that finds departments whose names contain the string “𝑠𝑐𝑖” as a
-- substring, regardless of the case. (Use the 𝑙𝑜𝑤𝑒𝑟() function to get over case sensitivity.)

-- 5. Suppose a relation 𝑚𝑎𝑟𝑘(𝐼𝐷, 𝑠𝑐𝑜𝑟𝑒) that assigns grades to students based on the score
-- as follows: grade 𝐹 if 𝑠𝑐𝑜𝑟𝑒 < 40, grade 𝐶 if 40 < 𝑠𝑐𝑜𝑟𝑒 < 60, grade 𝐵 if 60 < 𝑠𝑐𝑜𝑟𝑒 <
-- 80, and grade 𝐴 if 80 < 𝑠𝑐𝑜𝑟𝑒. Write the SQL queries that do the following:

-- 5a. Display the grade for each student based on the mark relation. Tip: use
-- case - when structures.

-- 5b. Find the number of students with each grade.

