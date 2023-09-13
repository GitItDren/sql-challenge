SELECT
employees.emp_no,
last_name,
first_name,
sex,
salary
FROM employees
INNER JOIN salaries.salary ON employees.emp_no = salaries.emp_no;
