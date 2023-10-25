--2a. Find the total grade points earned by the student with ID '66054 across all
-- courses taken by the student.

SELECT SUM(credits * points) AS total_grade_points
FROM takes
NATURAL JOIN course
NATURAL JOIN grade_points
WHERE ID = '66054';

