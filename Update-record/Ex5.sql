-- Write a SQL statement to change the email column of employees table with 'not available' for those employees who belongs to the 'Accounting' department.

update employees 
set email = 'not available' 
where department_id = (
select department_id 
from departments 
where department_name = 'Accounting');

select email from employees 
where department_id =(
select DEPARTMENT_ID from departments 
where DEPARTMENT_NAME = 'Accounting');