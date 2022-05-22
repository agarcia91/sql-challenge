--employee details:employee number,last name,first name,sex & salary
SELECT salaries.emp_no, employees.last_name,employees.first_name,employees.sex,salaries.salary
FROM employees
LEFT JOIN salaries
ON salaries.emp_no = employees.emp_no
LIMIT 13;



-- List employee first name, last name & hire date who were hired in 1986
SELECT first_name,last_name,hire_date
FROM employees
WHERE hire_date LIKE '%1986%'
LIMIT 13;



--List the manager of each department with department number,department name,
--manager employee number, first and last name
SELECT departments.dept_no, departments.dept_name, dept_manager.emp_no,
       employees.last_name,
	   employees.first_name
FROM dept_manager
LEFT JOIN departments
ON departments.dept_no = dept_manager.dept_no
LEFT JOIN employees
ON employees.emp_no = dept_manager.emp_no;



--List the department of each employee by employee number,last and first name,
--and department name
SELECT dept_emp.emp_no,employees.last_name,employees.first_name,departments.dept_name
FROM departments
LEFT JOIN dept_emp
ON dept_emp.dept_no = departments.dept_no
LEFT JOIN employees
ON employees.emp_no = dept_emp.emp_no
ORDER BY emp_no;



--List first name, last name, and sex for employees whose first name is "Hercules" 
--and last names begin with "B.
select first_name, last_name, sex
from employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';




--List all employees in the Sales department, including their employee number, 
--last name, first name, and department name.
select dept_emp.emp_no,employees.last_name,employees.first_name,departments.dept_name
from departments
LEFT JOIN dept_emp
ON departments.dept_no = dept_emp.dept_no
LEFT JOIN employees
ON employees.emp_no = dept_emp.emp_no
WHERE dept_name = 'Sales'
ORDER BY emp_no;




--List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.
select dept_emp.emp_no,employees.last_name,employees.first_name,departments.dept_name
from departments
LEFT JOIN dept_emp
ON departments.dept_no = dept_emp.dept_no
LEFT JOIN employees
ON employees.emp_no = dept_emp.emp_no
WHERE dept_name IN ('Sales','Development')
ORDER BY emp_no;




--List the frequency count of employee last names 
--(i.e., how many employees share each last name) in descending order.
SELECT last_name, COUNT (*)
FROM employees
GROUP BY last_name
ORDER BY last_name DESC;



