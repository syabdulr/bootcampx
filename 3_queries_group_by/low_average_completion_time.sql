SELECT 
   students.name AS student, 
   AVG(assignment_submissions.duration) AS average_completion_time, 
   AVG(assignments.estimated_time) AS average_suggested_completion_time
FROM 
   students 
JOIN 
   assignment_submissions ON students.id = assignment_submissions.student_id
JOIN 
   assignments ON assignment_submissions.assignment_id = assignments.id
WHERE 
   students.end_date IS NULL
   AND AVG(assignment_submissions.duration) < AVG(assignments.estimated_time)
GROUP BY 
   students.name
ORDER BY 
   average_completion_time;
