CREATE TABLE employees (
	emp_no INT PRIMARY KEY,
	emp_title_id TEXT,
	birth_date DATE,
	last_name VARCHAR(255),
	first_name VARCHAR(255),
	sex CHAR(1), -- Going with M & F options for simplicity
	hire_date DATE,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
 );
	
	
 CREATE TABLE departments (
 	dept_no TEXT PRIMARY KEY,
 	dept_name TEXT
 );
 
 
 CREATE TABLE salaries (
	 emp_no INT,
	 salary INT,
	 
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
 );
 
 CREATE TABLE titles (
	 title_ID TEXT PRIMARY KEY, 
	 title VARCHAR(255)
 );
 
 
 CREATE TABLE dept_emp (
 	emp_no INT,
 	dept_no TEXT,
	 
	 FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
 );
 
 CREATE TABLE dept_manager (
 	dept_no TEXT,
 	emp_no INT
 );
 


