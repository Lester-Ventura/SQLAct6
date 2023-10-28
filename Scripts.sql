--1a.
SELECT TITLE 
FROM COURSE 
WHERE DEPT_NAME = "Comp. Sci." AND CREDITS = 3; 
--1b.
SELECT DISTINCT ID 
FROM takes 
WHERE course_id = 
(
SELECT course_id 
FROM teaches 
WHERE ID = '10101');
--1c.
SELECT MAX(SALARY) 
FROM INSTRUCTOR;
--1d.
SELECT ID, NAME
FROM INSTRUCTOR
WHERE SALARY = (
SELECT
	MAX(SALARY)
FROM
	INSTRUCTOR
);
--1e.
SELECT
  s.course_id,
  s.sec_id,
  (SELECT COUNT(ID) FROM takes t
   WHERE t."year" = s."year"
   AND t.semester = s.semester
   AND t.course_id = s.course_id
   AND t.sec_id = s.sec_id) AS enrollment
FROM "section" s
WHERE s.semester = 'Fall' AND s."year" = '2017';
--1f.

SELECT MAX(enrollment) AS max_enrollment
FROM (
  SELECT
    (SELECT COUNT(ID) FROM takes t
     WHERE t."year" = s."year"
     AND t.semester = s.semester
     AND t.course_id = s.course_id
     AND t.sec_id = s.sec_id) AS enrollment
  FROM "section" s
  WHERE s.semester = 'Fall' AND s."year" = '2017'
) AS section_enrollments;
--1g.
SELECT sec_id from (SELECT sec_id, Max(enrollment) FROM (SELECT s.sec_id,
    (SELECT COUNT(ID) FROM takes t
     WHERE t."year" = s."year"
     AND t.semester = s.semester
     AND t.course_id = s.course_id
     AND t.sec_id = s.sec_id) AS enrollment
  FROM "section" s
  WHERE s.semester = 'Fall' AND s."year" = '2017'
));

--2a
SELECT SUM(credits * points) AS total_grade_points
FROM takes
NATURAL JOIN course
NATURAL JOIN grade_points
WHERE ID = '66054'

--2b
SELECT SUM(credits * points)/SUM(credits) AS GPA
FROM takes
NATURAL JOIN course
NATURAL JOIN grade_points
WHERE ID = '66054';

--2c
SELECT ID, SUM(credits * points)/SUM(credits) AS GPA
FROM takes
NATURAL JOIN course
NATURAL JOIN grade_points
GROUP BY ID;
--3a
UPDATE instructor 
SET salary = salary * 1.10
WHERE dept_name = "Comp. Sci."

--3b
DELETE FROM course
WHERE COURSE_ID NOT IN 
	(SELECT COURSE_ID
	 FROM SECTION)
	 
--3c
INSERT INTO instructor (id, name, dept_name, salary) 
SELECT id, name, dept_name , 10000 
FROM student 
WHERE tot_cred > 100;

--3c Reversal
DELETE FROM instructor where salary = '10000';

--4
SELECT DEPT_NAME
	FROM DEPARTMENT 
  WHERE lower(DEPT_NAME) LIKE '%sci%';

 --5a
 SELECT ID,
	CASE 
		WHEN grade < 40 THEN 'F'
		WHEN grade >= 40 AND grade < 60 THEN 'C'
		WHEN grade >= 60 AND grade < 80 THEN 'B'
		WHEN grade >= 80 THEN 'A'
END as letter_grade
FROM marks
 --5b
 SELECT letter_grade as GRADE, COUNT(letter_grade) as GRADE_COUNT
	FROM (
		SELECT ID,
		CASE
			WHEN grade < 40 THEN 'F'
			WHEN grade >= 40 AND grade < 60 THEN 'C'
			WHEN grade >= 60 AND grade < 80 THEN 'B'
			WHEN grade >= 80 THEN 'A'
		END as letter_grade
		FROM marks
	)
GROUP BY letter_grade
