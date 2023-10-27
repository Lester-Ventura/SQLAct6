-- 1g. 
-- Find the sections that had the maximum enrollment in Fall 2017.
SELECT sec_id 
  FROM (SELECT sec_id, Max(enrollment) 
    FROM (SELECT s.sec_id,
    (SELECT COUNT(ID) FROM takes t
     WHERE t."year" = s."year"
     AND t.semester = s.semester
     AND t.course_id = s.course_id
     AND t.sec_id = s.sec_id) AS enrollment
  FROM "section" s
  WHERE s.semester = 'Fall' AND s."year" = '2017'
));
