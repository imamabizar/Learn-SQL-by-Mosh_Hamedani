-- SELF OUTER JOINS
-- combining the table with it self

/* in this case we combining employee table to see
who is their manager */

USE sql_hr;
SELECT 
	e.employee_id, e.first_name,
    m.first_name AS manager
FROM employees e
LEFT OUTER JOIN employees m
	ON e.reports_to = m.employee_id;