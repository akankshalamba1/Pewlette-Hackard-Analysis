-- Deliverable 1
-- Creating retirement_titles table
SELECT e.emp_no, e.first_name, e.last_name, t.title, t.from_date, t.to_date
INTO retirement_titles 
FROM employees as e
INNER JOIN title as t
ON e.emp_no = t.emp_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

-- Display the table
SELECT * FROM retirement_titles;
-- Saving and exporting the table to csv file using import/export function

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,first_name, last_name, title
INTO unique_titles
FROM retirement_titles
WHERE (to_date = '9999-01-01')
-- Using order by function to sort the table
ORDER BY emp_no ASC,
to_date DESC;

SELECT * FROM unique_titles
-- Saving and exporting the table to csv file using import/export function

-- Deliverable 2
--Employees eligible to participate in a Mentorship Program
SELECT DISTINCT ON (e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date, de.from_date, de.to_date, ts.title
INTO mentorship_eligibilty
FROM employees AS e
INNER JOIN dept_emp AS de
ON e.emp_no=de.emp_no
INNER JOIN titles AS ts
ON e.emp_no=ts.emp_no
WHERE (de.to_date = '9999-01-01') and (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no ASC;

-- Display the table
SELECT * FROM mentorship_eligibility;
-- Saving and exporting the table to csv file using import/export function