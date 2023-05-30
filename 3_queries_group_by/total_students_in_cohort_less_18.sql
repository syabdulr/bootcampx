
-- Large Cohorts
-- Instruction
-- Get all cohorts with 18 or more students.

-- Select the cohort name and the total students.
-- Order by total students from smallest to greatest.
-- Expected Result:

--  cohort_name | student_count 
-- -------------+---------------
--  FEB12       |            18
--  APR09       |            19
--  JUN04       |            19
--  NOV19       |            22
--  SEP24       |            22
-- (5 rows)

SELECT cohorts.name AS cohort_name, count(students.*) AS student_count -- Selecting the cohort name and counting the number of students
FROM cohorts -- Starting with the cohorts table
JOIN students ON cohorts.id = students.cohort_id -- Joining the students table based on matching cohort IDs
GROUP BY cohort_name -- Grouping the result set by the cohort name
HAVING count(students.*) >= 18 -- Filtering the groups to include only those with a count of students greater than or equal to 18
ORDER BY student_count; -- Sorting the result set based on the student count in ascending order
