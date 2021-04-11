
select * from departments;

select * from dept_emp;

select * from dept_manager;

select * from employees;

select * from titles;

select * from salaries;


select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees e
left join salaries s on
e.emp_no=s.emp_no
order by e.emp_no;


select first_name,last_name, hire_date
from employees
where hire_date BETWEEN '1986-01-01' AND '1986-12-31'
order by hire_date, last_name;


select dm.dept_no, d.dept_name, dm.emp_no, e.first_name, e.last_name
from dept_manager dm
inner join departments d on
dm.dept_no=d.dept_no
inner join employees e on
e.emp_no=dm.emp_no;
-- where e.first_name like 'A%';
-- where e.first_name='Margareta';
-- where e.first_name like '%a%';
-- where e.first_name like '_a%';


select e.emp_no, e.last_name,e.first_name, d.dept_name
from employees e
inner join dept_emp de on 
e.emp_no=de.emp_no
inner join departments d on 
de.dept_no=d.dept_no;


select first_name,last_name,sex
from employees
where first_name='Hercules' and last_name like 'B%';



select e.emp_no, e.last_name,e.first_name, d.dept_name
from employees e
inner join dept_emp de on 
e.emp_no=de.emp_no
inner join departments d on 
de.dept_no=d.dept_no
where d.dept_name='Sales';


select e.emp_no, e.last_name,e.first_name, d.dept_name
from employees e
inner join dept_emp de on 
e.emp_no=de.emp_no
inner join departments d on 
de.dept_no=d.dept_no
where d.dept_name='Sales' or d.dept_name='Development';


select last_name, count(last_name)
from employees 
Group by last_name
order by count(last_name) desc;