-- List the following details of each employee: employee number, last name, first name, gender, and salary:

SELECT a.emp_no, a.first_name, a.last_name, a.gender,b.salary
FROM data_employees AS a
INNER JOIN data_salaries AS b
ON a.emp_no = b.emp_no

-- List employees who were hired in 1986:

SELECT a.emp_no, a.first_name, a.last_name, a.hire_date
FROM data_employees AS a
WHERE a.hire_date = '%1986%';

-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates:
SELECT a.emp_no, a.dept_no, b.dept_name, b.dept_no
FROM data_dept_manager AS a
INNER JOIN data_departments AS b
ON a.dept_no = b.dept_no
JOIN data_employees
ON a.emp_no = data_employees.emp_no;


-- List the department of each employee with the following information: employee number, last name, first name, and department name:
SELECT
	a.emp_no,
	a.dept_no,
	b.last_name,
	b.emp_no
FROM data_dept_empt AS a
JOIN data_employees AS b
  ON a.emp_no = b.emp_no
JOIN data_departments
  ON a.dept_no = data_departments.dept_no;
  
-- List all employees whose first name is "Hercules" and last names begin with "B.":
SELECT a.emp_no, a.first_name, a.last_name
FROM data_employees AS a
WHERE a.first_name LIKE '%Hercules%'
AND a.last_name = 'B.%';

-- List all employees in the Sales department, including their employee number, last name, first name, and department name:

SELECT a.emp_no, a.first_name, a.last_name, a.gender,b.dept_no
FROM data_employees AS a
INNER JOIN data_dept_empt AS b
ON a.emp_no = b.emp_no
JOIN data_departments
ON b.dept_no = data_departments.dept_no
WHERE b.dept_no == 'd007';

-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name:
SELECT a.emp_no, a.first_name, a.last_name, a.gender,b.dept_no
FROM data_employees AS a
INNER JOIN data_dept_empt AS b
ON a.emp_no = b.emp_no
JOIN data_departments
ON b.dept_no = data_departments.dept_no;
WHERE b.dept_no == 'd007'
AND b.dept_no == 'd005';

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name:

SELECT last_name, COUNT(*) AS "Employee Frequency" 
FROM data_employees 
GROUP BY last_name
ORDER BY "Employee Frequency" DESC
;	
	









