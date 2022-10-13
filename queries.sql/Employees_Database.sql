--Delete existing tables
DROP TABLE departments CASCADE;
DROP TABLE employees CASCADE;
DROP TABLE dept-emp CASCADE;
DROP TABLE dept-manager CASCADE;
DROP TABLE salaries CASCADE;
DROP TABLE title CASCADE;


-- Creating tables for PH-DepartmentDB	
CREATE TABLE departments (	
	dept_no VARCHAR(4) NOT NULL,
	dept_name VARCHAR(40) NOT NULL,
	PRIMARY KEY (dept_no),
	UNIQUE(dept_name)
);

-- Creating tables for PH-EmployeeDB	
CREATE TABLE employees (	
	emp_no INT NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	gender VARCHAR NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no)
);

-- Creating tables for PH-Dept-EmpDB	
CREATE TABLE dept_emp (
	dept_no VARCHAR(4) NOT NULL,
    emp_no INT NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    PRIMARY KEY (emp_no, dept_no)
);

-- Creating tables for PH-Dept-ManagerDB	
CREATE TABLE dept_manager (
	dept_no VARCHAR(4) NOT NULL,
    emp_no INT NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    PRIMARY KEY (emp_no, dept_no)
);

-- Creating tables for PH-SalariesDB	
CREATE TABLE salaries (
  emp_no INT NOT NULL,
  salary INT NOT NULL,
  from_date DATE NOT NULL,
  to_date DATE NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
  PRIMARY KEY (emp_no)
);

-- Creating tables for PH-titleDB
CREATE TABLE title(
	emp_no INT,
	title VARCHAR,
	from_date DATE,
	to_date DATE
);

SELECT * FROM departments;
SELECT * FROM employees;
SELECT * FROM dept-emp;
SELECT * FROM dept-manager;
SELECT * FROM salaries;
SELECT * FROM title;