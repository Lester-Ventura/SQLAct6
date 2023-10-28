SELECT advisee.name, IFNULL(advisor1.name, "NO INSTRUCTOR") as instructor_name 
FROM student advisee 
	LEFT JOIN advisor a ON advisee.ID = s_ID 
	LEFT JOIN instructor advisor1 ON a.i_ID = advisor1.ID