-- Joining departments and dept_manager tables
SELECT retirement_info.emp_no,
     retirement_info.first_name,
     retirement_info.last_name,
     dept_emp.to_date
INTO current_emp
FROM retirement_info
LEFT JOIN dept_emp
ON retirement_info.emp_no = dept_emp.emp_no
WHERE dept_emp.to_date = ('9999-01-01');

SELECT * FROM current_emp;