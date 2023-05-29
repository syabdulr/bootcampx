SELECT SUM(duration) as total_duration
FROM students
JOIN assignments ON students.id = assignments.student_id
JOIN cohorts ON students.cohort_id = cohorts.id
WHERE cohorts.name = 'FEB12';
