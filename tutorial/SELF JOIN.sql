-- SELF JOINS

USE sql_hr;
SELECT 
	e.first_name, e.last_name, 
    m.first_name as managers
FROM employees e
JOIN employees m
	ON e.reports_to = m.employee_id