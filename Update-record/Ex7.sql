-- -- Write a SQL statement to change job ID of employee which ID is 118, to SH_CLERK if the employee belongs to department, which ID is 30 and the existing job ID does not start with SH.

update employees set job_id = 'SH_CLERK' where employee_id =118 and department_id =30 and not job_id like 'SH%';
select * from employees where EMPLOYEE_ID = 118;