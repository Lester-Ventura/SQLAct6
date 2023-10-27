-- 3c. Insert every student whose 𝑡𝑜𝑡_𝑐𝑟𝑒𝑑 attribute is greater than 100 as an
-- instructor in the same department with a salary of $10,000.
INSERT INTO instructor (id, name, dept_name, salary) 
SELECT id, name, dept_name , 10000 
FROM student 
WHERE tot_cred > 100;
