/*a. Display the grade for each student based on the mark relation. Tip: use
case - when structures.
select
case
when <condition> then <value>
...

else <value> //may not be necessary
end
…*/

SELECT ID,
	CASE 
		WHEN grade < 40 THEN 'F'
		WHEN grade >= 40 AND grade < 60 THEN 'C'
		WHEN grade >= 60 AND grade < 80 THEN 'B'
		WHEN grade >= 80 THEN 'A'
END as letter_grade
FROM marks