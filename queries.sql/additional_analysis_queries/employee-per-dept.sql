-- Employee count by department number
SELECT COUNT(ce.emp_no), de.dept_no
INTO dept_total
FROM current_emp as ce
LEFT JOIN dept_emp as de
ON ce.emp_no = de.emp_no
GROUP BY de.dept_no
ORDER BY de.dept_no;

select * from dept_total;