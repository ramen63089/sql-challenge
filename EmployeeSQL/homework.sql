
---1) 
SELECT  data_employees.emp_no,  data_employees.last_name,  data_employees.first_name,  data_employees.gender, salaries.salary FROM data_employees
JOIN salaries ON data_employees.emp_no= salaries.emp_no;

---2)
SELECT first_name, last_name FROM data_employees WHERE hire_date >= '1986-01-01 00:00:00' 
       and hire_date < '1987-01-01 00:00:00';
	   
---3)List the manager of each department with the following information: dept_manager.department number, departments.department name, dept_manager.the manager's employee number, data_employees.last name, data_employees.first name, and data_titles.start and data_titles.end employment dates.
SELECT data_titles.emp_no, data_titles.from_date, data_titles.to_date, data_employees.first_name, data_employees.last_name, dept_manager.dept_no, departments.dept_name FROM data_titles JOIN data_employees ON data_titles.emp_no= data_employees.emp_no JOIN dept_manager ON dept_manager.emp_no=data_employees.emp_no JOIN departments ON dept_manager.dept_no= departments.dept_no WHERE data_titles.title LIKE '%Manager%';
---4)List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT data_employees.first_name, data_employees.last_name, data_employees.emp_no, departments.dept_name FROM data_employees JOIN dept_emp ON data_employees.emp_no=dept_emp.emp_no JOIN departments on departments.dept_no= dept_emp.dept_no;


---5)List all employees whose first name is "Hercules" and last names begin with "B."
SELECT data_employees.first_name, data_employees.last_name FROM data_employees  WHERE data_employees.first_name= 'Hercules' AND data_employees.last_name LIKE 'B%';



---6)List all employees in the Sales department, including their employee number, last name, first name, and department name.
_
SELECT data_employees.first_name, data_employees.last_name, data_employees.emp_no, departments.dept_name  FROM data_employees JOIN dept_emp on dept_emp.emp_no=data_employees.emp_no JOIN departments on departments.dept_no=dept_emp.dept_no WHERE departments.dept_name= 'Sales'


---7)List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT data_employees.first_name, data_employees.last_name, data_employees.emp_no, departments.dept_name  FROM data_employees JOIN dept_emp on dept_emp.emp_no=data_employees.emp_no JOIN departments on departments.dept_no=dept_emp.dept_no WHERE departments.dept_name= 'Sales' or departments.dept_name= 'Development'; 



---8)In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT count(emp_no), last_name FROM data_employees GROUP BY last_name ORDER BY count(emp_no) DESC;



