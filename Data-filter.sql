-- select concat(first_name, ' ', last_name) as names, length(first_name)+length(last_name) 'Length of character' from employees;
-- select * from employees where first_name regexp '[1-9]';
-- select * from employees order by department_id limit 10;
-- select concat(first_name, ' ', last_name) as name, round(salary/12,2) as 'monthly salary' from employees;
-- select concat(first_name, ' ', last_name) as names, salary from employees where salary not between 10000 and 15000;
-- select concat(first_name, ' ', last_name) as names, department_id from employees where department_id in (30,100)
-- order by department_id;
-- select concat(first_name, ' ', last_name) as names, salary, department_id from employees where salary not between 10000 and 15000 
-- AND department_id in (30,100);
-- select concat(first_name,' ', last_name) as names, hire_date from employees where year(hire_date) = 1987; 
-- select first_name from employees where first_name like '%b%' and first_name like '%c%';

-- Write a query to display the last name, job, and salary for all employees whose job is that of a Programmer or a Shipping Clerk, and salary is not equal to $4,500, $10,000, or $15,000.
-- select last_name, job_id, salary
-- from employees
-- where job_id in ('IT_PROG','SH_CLERK')
-- -- where job_id = 'it_prog' OR JOB_ID = 'sh_clerk'
-- and salary not in(4500,10000,15000);

-- Write a query to display the last name of employees whose name have exactly 6 characters.
-- select last_name from employees 
-- where last_name like '______';

-- Write a query to display the last name of employees having 'e' as the third character.
-- select last_name from employees
-- where last_name like '__e%';

-- Write a query to display the jobs/designations available in the employees table.
-- select distinct JOB_ID FROM EMPLOYEES;

-- Write a query to display the name (first_name, last_name), salary and PF (15% of salary) of all employees.
-- SELECT CONCAT(FIRST_NAME,' ',LAST_NAME) AS NAMES, SALARY, SALARY*0.15 AS PF FROM EMPLOYEES;

-- Write a query to select all records from employees where last name in 'JONES', 'BLAKE', 'SCOTT', 'KING' and 'FORD'.
SELECT * FROM EMPLOYEES 
WHERE LAST_NAME IN ('JONES', 'BLAKE', 'SCOTT', 'KING', 'FORD');