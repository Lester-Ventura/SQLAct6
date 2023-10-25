-- b. Delete all the courses that have never been offered.
DELETE FROM course
WHERE COURSE_ID NOT IN 
	(SELECT COURSE_ID
	 FROM SECTION)
