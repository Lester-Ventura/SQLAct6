--2b. Find the grade point average for the student above (GPA is the total grade point
--divided by the total credits for the associated courses).


-- could just be ran in a different file, but doing it here for clarity
-- also because the files are isolated in this case
CREATE TABLE grade_points (
		grade CHAR(2) PRIMARY KEY,
    		points DECIMAL (3,1)
    		);

DELETE from grade_points;
    
INSERT INTO grade_points (grade, points) VALUES
    		('A', 4.0),
    		('A-', 3.7),
    		('B+', 3.3),
    		('B', 3.0),
    		('B-', 2.7),
    		('C+', 2.3),
    		('C', 2.0),
    		('D', 1.0),
    		('F', 0.0);
        
SELECT SUM(credits * points)/SUM(credits) AS GPA
FROM takes
NATURAL JOIN course
NATURAL JOIN grade_points
WHERE ID = '66054';
