SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
WHERE teachers.id = assistance_requests.teacher_id
AND cohorts.name = 'JUL02'
ORDER BY teacher;