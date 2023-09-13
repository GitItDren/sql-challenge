SELECT
departments.dept_no,
departments.dept_name,
employees.emp_no,
employees.first_name,
employees.last_name
FROM
departments
JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
JOIN employees ON dept_manager.emp_no = employees.emp_no;