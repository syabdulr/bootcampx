SELECT cohort_id, AVG(completed_at - started_at) as average_assistance_time
FROM cohorts
JOIN assistance_requests ON cohort_id = cohort_id
GROUP BY cohort
ORDER BY average_assistance_time;
