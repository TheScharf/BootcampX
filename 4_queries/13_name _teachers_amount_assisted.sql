SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort, count(assistance_requests.teacher_id) as total_assistances
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
WHERE teachers.id = assistance_requests.teacher_id
AND cohorts.name = 'JUL02'
GROUP BY teachers.name, cohorts.name
ORDER BY teacher;