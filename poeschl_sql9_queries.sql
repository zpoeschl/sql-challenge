--1. list employee number, last name, first name, sex, salary for all employees
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees as e
inner join
salaries as s
on e.emp_no=s.emp_no;

--2. list first name, last name, hire date for employees hired in 1986
select * from employees
where hire_date between '01/01/1986' and '12/31/1986';

--3. list manager of each dept with dept #, dept name, mgr emp # & mgr emp name
select dm.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
from dept_manager as dm
	left join
	employees as e
	on dm.emp_no=e.emp_no
	left join
	departments as d
	on dm.dept_no=d.dept_no;

--4. list department of each employee with emp #, emp name, and dept name
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
	left join	
	dept_emp as de
	on e.emp_no=de.emp_no
	left join
	departments as d
	on de.dept_no=d.dept_no;

--5. list fname, lname, sex for employees with fname 'Hercules' and lname starts with 'B'
select first_name, last_name, sex from employees
where first_name = 'Hercules'
and
last_name like 'B%';

--6. list employees in Sales, include emp #, lname, fname, dept name
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
	left join
	dept_emp as de
	on e.emp_no=de.emp_no
	left join
	departments as d
	on de.dept_no=d.dept_no
	where d.dept_name = 'Sales';

--7. list employees in Sales and Development, include emp #, lname, fname, dept name
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
	left join
	dept_emp as de
	on e.emp_no=de.emp_no
	left join
	departments as d
	on de.dept_no=d.dept_no
	where d.dept_name = 'Sales'
	or
	d.dept_name = 'Development';

--8. list frequency count of employee last names in descending order
select last_name, count(last_name) from employees
group by last_name
order by count(last_name)desc;