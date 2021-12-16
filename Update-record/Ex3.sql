-- Write a SQL statement to change the email and commission_pct column of employees table with 'not available' and 0.10 for those employees whose department_id is 110. 

update employees set email = 'not available', commission_pct = 0.10 where department_id = 110;
select email, commission_pct from employees where department_id = 110;