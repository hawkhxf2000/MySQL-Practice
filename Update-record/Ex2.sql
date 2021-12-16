-- Write a SQL statement to change the email and commission_pct column of employees table with 'not available' and 0.10 for all employees.

update employees set email = 'not available', commission_pct = 0.10;
select email, commission_pct from employees; 