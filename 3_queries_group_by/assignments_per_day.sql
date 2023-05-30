-- \i 3_queries_group_by/assignments_per_day.sql --
-- \i /3_queries_group_by/assignments_per_day.sql -- DONT DO THIS! IT will look in the root mac folder

SELECT day, count(*) as total_assignments 
FROM assignments
GROUP BY day
HAVING count(*) >= 10
ORDER BY day;