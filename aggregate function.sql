-- Write a query to list the number of jobs available in the employees table.
--  SELECT COUNT(DISTINCT JOB_ID) AS NUMJOB FROM EMPLOYEES;

-- Write a query to get the total salaries payable to employees.
-- select sum(salary) as Total_Salary from employees; 

-- Write a query to get the maximum salary of an employee working as a Programmer.
-- select max(salary) from employees where job_id = 'IT_PROG';

-- Write a query to get the average salary and number of employees working the department 90.
-- select avg(salary), count(employee_id) from employees where department_id = 90; 

-- Write a query to get the highest, lowest, sum, and average salary of all employees.
-- select max(salary), min(salary), round(sum(salary),2), round(avg(salary),2) from employees; 

-- Write a query to get the number of employees with the same job.
-- select job_id, count(*) from employees group by job_id; 

-- Write a query to get the difference between the highest and lowest salaries.
-- select max(salary)-min(salary) as Diff_Salary from employees;

-- Write a query to find the manager ID and the salary of the lowest-paid employee for that manager.
-- select manager_id, min(salary) from employees
-- where MANAGER_ID is not null
--  group by manager_id
--  order by min(salary);

-- Write a query to get the department ID and the total salary payable in each department.
-- select department_id, sum(salary) from employees
-- where department_id is not null
-- group by department_id;

-- Write a query to get the average salary for each job ID excluding programmer.
-- select job_id, avg(salary) from employees 
-- where job_id != 'IT_PROG'
-- group by job_ID;  

-- Write a query to get the total salary, maximum, minimum, average salary of employees (job ID wise), for department ID 90 only.
-- select JOB_ID, sum(salary), max(salary), min(salary), avg(salary) from employees
-- where DEPARTMENT_ID = 90
-- group by job_id;

-- Write a query to get the job ID and maximum salary of the employees where maximum salary is greater than or equal to $4000.
-- select job_id, max(salary) from employees 
-- group by job_id
-- having max(salary) >= 4000;

-- Write a query to get the average salary for all departments employing more than 10 employees.
select department_id, avg(salary) from employees
group by DEPARTMENT_ID
having count(*) >10;  