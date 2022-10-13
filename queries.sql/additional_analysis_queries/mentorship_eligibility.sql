SELECT distinct on (e.emp_no)e.emp_no, e.first_name, 
e.last_name, e.birth_date,
de.from_date, de.to_date, t.title
INTO mentorship_eligibility
FROM employees as e
INNER JOIN dept_emp as de 
ON e.emp_no = de.emp_no 
INNER JOIN title as t
ON e.emp_no = t.emp_no

WHERE (de.to_date = '9999-01-01') and (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY emp_no;

SELECT * FROM mentorship_eligibility;