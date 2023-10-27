-- 1b.
-- Find the IDs of all students who were taught by instructor Einstein; make sure no
-- duplicates are shown in the result(s).
SELECT DISTINCT ID FROM takes 
WHERE course_id = (SELECT course_id FROM teaches WHERE ID = '10101');

