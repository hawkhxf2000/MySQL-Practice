-- Write a SQL statement to increase the minimum and maximum salary of PU_CLERK by 2000 as well as the salary for those employees by 20% and commission percent by .10.

update jobs, employees 
set jobs.MIN_SALARY = jobs.MIN_SALARY +2000, jobs.MAX_SALARY = jobs.MAX_SALARY + 2000,
employees.salary = employees.SALARY + (employees.SALARY *0.20),
employees.COMMISSION_PCT = employees.COMMISSION_PCT+.10
where jobs.job_id = 'PU_CLERK' and employees.JOB_ID = 'PU_CLERK';

