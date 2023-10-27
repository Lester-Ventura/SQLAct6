-- 5b. Find the number of students with each grade.
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
