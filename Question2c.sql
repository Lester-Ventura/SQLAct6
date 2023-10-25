--2c. Find the ID and the GPA of each student.

SELECT ID, SUM(credits * points)/SUM(credits) AS GPA
FROM takes
NATURAL JOIN course
NATURAL JOIN grade_points
GROUP BY ID;
