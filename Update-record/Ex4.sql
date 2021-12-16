-- Write a SQL statement to change the email column of employees table with 'not available' for those employees whose department_id is 80 and gets a commission is less than .20%.

update employees set email='not available' where department_ID = 80 and commission_pct < 0.20;
select * from employees where DEPARTMENT_ID = 80 and COMMISSION_PCT <0.20;