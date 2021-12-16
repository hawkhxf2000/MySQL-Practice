-- 1. Write a query to find the addresses (location_id, street_address, city, state_province, country_name) of all the departments.
--  select department_name, location_id, street_address, city, state_province, country_id from locations
--  natural join departments
-- on locations.COUNTRY_ID = countries.COUNTRY_ID;

-- 2. Write a query to find the name (first_name, last name), department ID and name of all the employees.
-- select employee_id, first_name, last_name, department_name from employees e
-- inner join departments d 
-- -- using(department_id)
-- on e.department_id = d.department_id
-- order by EMPLOYEE_ID;

-- 3. Write a query to find the name (first_name, last_name), job, department ID and name of the employees who works in London. 
-- select first_name, last_name, job_id, department_id, department_name from employees e
-- join departments d
-- using(department_id)
-- join locations l 
-- using(location_id)
-- where lower(l.city) = 'london';

-- 4. Write a query to find the employee id, name (last_name) along with their manager_id and name (last_name).
-- select e.employee_id 'EID', e.last_name 'E_name', m.manager_id 'MID', m.last_name 'M_name'from employees e
-- join employees m
-- on (e.manager_id = m.employee_id); 

-- 5. Write a query to find the name (first_name, last_name) and hire date of the employees who was hired after 'Jones'.
-- (1) This is subquery method
-- select first_name, last_name, hire_date from employees 
-- where hire_date > (select hire_date from employees
-- where lower(last_name) = 'jones'); 
-- (2) This is jon method
-- SELECT e1.first_name, e1.last_name, e1.hire_date 
-- FROM employees e1
-- JOIN employees e2
-- ON (e2.last_name = 'Jones') 
-- WHERE e2.hire_date < e1.hire_date;

-- 6. Write a query to get the department name and number of employees in the department.
-- select d.department_name, count(e.employee_id)
-- from employees e 
-- join departments d
-- using(department_id)
-- group by department_id; 

-- 7. Write a query to find the employee ID, job title, number of days between ending date and starting date for all jobs in department 90 from job history. 
-- select jh.employee_id, j.job_title, datediff(jh.end_date,jh.start_date) 在职天数
-- from job_history jh
-- join  jobs j
-- using (job_id)
-- where department_id = 90;

-- 8. Write a query to display the department ID and name and first name of manager.
-- select d.department_id, d.department_name,d.manager_id, e.first_name
-- from departments d
-- join employees e
-- on (d.manager_id = e.employee_id);

-- 9. Write a query to display the department name, manager name, and city.
-- select d.department_name, concat(e.first_name,' ',last_name) name, l.city 
-- from departments d 
-- join employees e
-- on (d.manager_id = e.employee_id)
-- join locations l
-- using(location_id);

-- 10. Write a query to display the job title and average salary of employees.
-- select job_title, avg(salary)
-- from employees 
-- natural join jobs
-- group by job_title;  

-- 11. Write a query to display job title, employee name, and the difference between salary of the employee and minimum salary for the job.
-- select job_title, concat(first_name,' ', last_name) name, (salary-min_salary) diff_salary
-- from employees 
-- natural join jobs; 

-- Write a query to display the job history that were done by any employee who is currently drawing more than 10000 of salary.
 -- select jh.* 
--  from job_history jh
--  join employees
--  using(employee_id)
--  where salary>10000;

-- Write a query to display the first name, last name, hire date, salary of the manager for all managers whose experience is more than 15 years.
select first_name, last_name, hire_date, salary
from employees e
join departments d
using(department_id) 
where d.manager_id = e.employee_id and (year(curdate())-year(hire_date)) >15
order by hire_date;