select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
from employees
inner join salaries on employees.emp_no=salaries.emp_no;

select * from employees
where hire_date between '01/01/1986' and '12/31/1986';

