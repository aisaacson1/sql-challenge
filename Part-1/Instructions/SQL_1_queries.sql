-- Query employee details

Select e.emp_no as "Employee Number",
		e.last_name as "Last Name",
		e.first_name as "First Name",
		e.gender as "Gender",
		s.salary as "Salary"
from employees e
inner join salaries s
on e.emp_no = s.emp_no;

-- List of employees hired in 1986

Select *
From employees e
Where e.hire_date
Between '1986-01-01' and '1986-12-31';

-- Dept Managers

Select d.dept_no as "Department Number",
		d.dept_name as "Department Name",
		dm.emp_no as "Employee Number",
		e.last_name as "Last Name",
		e.first_name as "First Name",
		dm.from_date as "Start Date",
		dm.to_date as "End Date"
from departmentmanagers dm
inner join departments d
on dm.dept_no = d.dept_no
inner join employees e
on dm.emp_no = e.emp_no;

-- Employees with Department

Select e.emp_no as "Employee Number",
		e.last_name as "Last Name",
		e.first_name as "First Name",
		d.dept_name as "Department Name"
from employees e
inner join departmentemployees de
on e.emp_no = de.emp_no
inner join departments d
on de.dept_no = d.dept_no;

-- Query Herclues B

Select *
From employees
Where first_name='Hercules' and last_name LIKE 'B%';

-- Employees in Sales Dept

Select e.emp_no as "Employee Number",
		e.last_name as "Last Name",
		e.first_name as "First Name",
		d.dept_name as "Department Name"
from employees e
inner join departmentemployees de
on e.emp_no = de.emp_no
inner join departments d
on de.dept_no = d.dept_no
where d.dept_name='Sales';

-- Employees in Sales or Development Depts

Select e.emp_no as "Employee Number",
		e.last_name as "Last Name",
		e.first_name as "First Name",
		d.dept_name as "Department Name"
from employees e
inner join departmentemployees de
on e.emp_no = de.emp_no
inner join departments d
on de.dept_no = d.dept_no
where d.dept_name='Sales' or d.dept_name='Development';

-- Count of employee last names

Select Count(e.last_name) as "Count of Last Name", e.last_name as "Last Name"
from employees e
Group By e.last_name
Order by "Count of Last Name" DESC;