-- In case you want to reset
DROP TABLE Painter514
DROP TABLE Packard101
DROP TABLE Watson100
DROP TABLE Watson120
DROP TABLE Taylor3128


CREATE TABLE Painter514 
    AS SELECT ts."day" "Day", ts.start_hr, ts.start_min, 
		ts.end_hr, ts.end_min, 
		c.course_id Class, i.name Instructor  
	FROM
	classroom c_room JOIN "section" s ON c_room.room_number = s.room_number AND c_room.building = s.building 
	LEFT JOIN course c 
		ON c.course_id = s.course_id
	LEFT JOIN teaches t 
		ON t.course_id = c.course_id 
	LEFT JOIN instructor i 
		ON i.ID = t.ID 
	LEFT JOIN time_slot ts 
		ON s.time_slot_id = ts.time_slot_id
	WHERE c_room.building = "Painter" AND c_room.room_number = 514
	ORDER BY ts.day, ts.start_hr

CREATE TABLE Packard101
    AS SELECT ts."day" "Day", ts.start_hr, ts.start_min, 
		ts.end_hr, ts.end_min, 
		c.course_id Class, i.name Instructor  
	FROM
	classroom c_room JOIN "section" s ON c_room.room_number = s.room_number AND c_room.building = s.building 
	LEFT JOIN course c 
		ON c.course_id = s.course_id
	LEFT JOIN teaches t 
		ON t.course_id = c.course_id 
	LEFT JOIN instructor i 
		ON i.ID = t.ID 
	LEFT JOIN time_slot ts 
		ON s.time_slot_id = ts.time_slot_id
	WHERE c_room.building = "Packard" and c_room.room_number = 101
	ORDER BY ts.day, ts.start_hr

CREATE TABLE Watson100
    AS SELECT ts."day" "Day", ts.start_hr, ts.start_min, 
		ts.end_hr, ts.end_min, 
		c.course_id Class, i.name Instructor  
	FROM
	classroom c_room JOIN "section" s ON c_room.room_number = s.room_number AND c_room.building = s.building 
	LEFT JOIN course c 
		ON c.course_id = s.course_id
	LEFT JOIN teaches t 
		ON t.course_id = c.course_id 
	LEFT JOIN instructor i 
		ON i.ID = t.ID 
	LEFT JOIN time_slot ts 
		ON s.time_slot_id = ts.time_slot_id
	WHERE c_room.building = "Watson" AND c_room.room_number = 100
	ORDER BY ts.day, ts.start_hr

CREATE TABLE Watson120
    AS SELECT ts."day" "Day", ts.start_hr, ts.start_min, 
		ts.end_hr, ts.end_min, 
		c.course_id Class, i.name Instructor  
	FROM
	classroom c_room JOIN "section" s ON c_room.room_number = s.room_number AND c_room.building = s.building 
	LEFT JOIN course c 
		ON c.course_id = s.course_id
	LEFT JOIN teaches t 
		ON t.course_id = c.course_id 
	LEFT JOIN instructor i 
		ON i.ID = t.ID 
	LEFT JOIN time_slot ts 
		ON s.time_slot_id = ts.time_slot_id
	WHERE c_room.building = "Watson" AND c_room.room_number = 120
	ORDER BY ts.day, ts.start_hr




-- Some overlap here
	-- But apparently it's fine?
CREATE TABLE Taylor3128
    AS SELECT t.sec_id, s.semester, s."year", ts."day" "Day", 
        ts.start_hr, ts.start_min, ts.end_hr, ts.end_min, 
	    c.course_id Class, i.name Instructor  
	FROM
	classroom c_room JOIN "section" s ON c_room.room_number = s.room_number AND c_room.building = s.building 
	LEFT JOIN course c 
		ON c.course_id = s.course_id
	LEFT JOIN teaches t 
		ON t.course_id = c.course_id 
	LEFT JOIN instructor i 
		ON i.ID = t.ID 
	LEFT JOIN time_slot ts 
		ON s.time_slot_id = ts.time_slot_id
	WHERE c_room.building = "Taylor" AND c_room.room_number = 3128
	ORDER BY s."year", ts.day, ts.start_hr