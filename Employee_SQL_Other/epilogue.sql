-- Queries for Epilogue 
SELECT employees.emp_no, titles.title, departments.dept_name, employees.first_name, employees.last_name, employees.sex, salaries.salary
FROM employees
JOIN titles
ON employees.emp_title_id = titles.title_id
JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no
JOIN salaries
ON employees.emp_no = salaries.emp_no 
WHERE employees.emp_no = 499942;