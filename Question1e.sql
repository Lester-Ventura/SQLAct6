-- 1e.
-- Find the enrollment of each section offered in Fall 2017.

SELECT
  s.course_id,
  s.sec_id,
  (SELECT COUNT(ID) FROM takes t
   WHERE t."year" = s."year"
   AND t.semester = s.semester
   AND t.course_id = s.course_id
   AND t.sec_id = s.sec_id) AS enrollment
FROM "section" s
WHERE s.semester = 'Fall' AND s."year" = '2017';
