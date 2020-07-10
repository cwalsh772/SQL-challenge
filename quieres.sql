SELECT employees.emp_no, employees.last_name, employees.first_name, employees.gender,
SUM(salaries.salary) AS total_salary 
FROM employees
INNER JOIN salaries ON employees.emp_no = salaries.emp_no
GROUP BY employees.emp_no;


SELECT  emp_no, hire_date
FROM employees
WHERE EXTRACT (YEAR FROM hire_date) = 1986;


SELECT dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, 
employees.first_name, dept_manager.from_date, dept_manager.to_date
FROM dept_manager
INNER JOIN employees ON dept_manager.emp_no = employees.emp_no
INNER JOIN departments ON dept_manager.dept_no = departments.dept_no;


SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
INNER JOIN employees on dept_emp.emp_no = employees.emp_no
INNER JOIN departments on dept_emp.dept_no = departments.dept_no;


SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name = 'Hercules' and last_name LIKE 'B%';


SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
INNER JOIN employees ON dept_emp.emp_no = employees.emp_no
INNER JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales';


SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
INNER JOIN employees ON dept_emp.emp_no = employees.emp_no
INNER JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales' or departments.dept_name = 'Development';


SELECT last_name,
COUNT(last_name) AS last_name_count 
FROM employees
GROUP BY last_name
ORDER BY last_name_count DESC;