SELECT i.ID as FacultyID,
i.name as FacultyName,
i.dept_name as FacultyDept,
COUNT(DISTINCT s.ID) AS NumberOfStudents
FROM instructor i 
LEFT JOIN teaches AS t ON i.ID = t.ID
LEFT JOIN takes AS tk ON t.course_id = tk.course_id
LEFT JOIN student AS s ON tk.ID = s.ID 
GROUP BY FacultyID;
