-- 1f. 
-- Find the maximum enrollment, across all sections, in Fall 2017.
SELECT MAX(enrollment) AS max_enrollment
FROM (
  SELECT
    (SELECT COUNT(ID) FROM takes t
     WHERE t."year" = s."year"
     AND t.semester = s.semester
     AND t.course_id = s.course_id
     AND t.sec_id = s.sec_id) AS enrollment
  FROM "section" s
  WHERE s.semester = 'Fall' AND s."year" = '2017'
) AS section_enrollments;


