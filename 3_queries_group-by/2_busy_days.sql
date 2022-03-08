SELECT day, count(name) as total_assignments
FROM assignments
GROUP BY day
HAVING count(name) > 9
ORDER BY day; 