--2b. Find the grade point average for the student above (GPA is the total grade point
--divided by the total credits for the associated courses).
SELECT SUM(credits * points)/SUM(credits) AS GPA
FROM takes
NATURAL JOIN course
NATURAL JOIN grade_points
WHERE ID = '66054';
