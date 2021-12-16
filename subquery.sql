-- Write a query to find the name (first_name, last_name) and the salary of the employees who have a higher salary than the employee whose last_name='Bull'.
-- select concat(first_name, ' ', last_name) as name, salary
-- from employees
-- where salary > 
-- (select salary from employees where last_name = 'bull')
-- order by salary desc; 

-- Write a query to find the name (first_name, last_name) of all employees who works in the IT department.
-- select job_id, concat(first_name, ' ', last_name) as name 
-- from employees
-- where department_id =
-- (select DEPARTMENT_ID from hr.departments where department_name = 'IT');

-- Write a query to find the name (first_name, last_name) of the employees who have a manager and worked in a USA based department.
-- SELECT first_name, last_name FROM employees 
-- WHERE manager_id in (select employee_id 
-- FROM employees WHERE department_id 
-- IN (SELECT department_id FROM departments WHERE location_id 
-- IN (select location_id from locations where country_id='US'))
-- )
-- order by first_name;

-- Write a query to find the name (first_name, last_name) of the employees who are managers.
-- select first_name, last_name from employees
-- where employee_id in 
-- (select manager_id from employees);

-- Write a query to find the name (first_name, last_name), and salary of the employees whose salary is greater than the average salary.
-- select first_name, last_name, salary from employees
-- where salary >
-- (select avg(salary) from employees)
-- order by salary;

-- Write a query to find the name (first_name, last_name), and salary of the employees whose salary is equal to the minimum salary for their job grade.
 -- select first_name, last_name, salary from employees
--  where salary =
--  (select min_salary from jobs where employees.job_id = jobs.job_id); 

-- Write a query to find the name (first_name, last_name), and salary of the employees who earns more than the average salary and works in any of the IT departments.
-- select first_name, last_name, salary from employees
-- where (salary >
-- (select avg(salary) from employees))
-- and department_id in
-- (select department_id from departments where department_name like 'IT%'); 

-- Write a query to find the name (first_name, last_name), and salary of the employees who earns more than the employee whose last name is Bell.
-- select first_name, last_name, salary from employees 
-- where salary >
-- (select salary from employees where last_name = 'Bell')
-- order by salary; 

-- Write a query to find the name (first_name, last_name), and salary of the employees who earn the same salary as the minimum salary for all departments.
-- select first_name, last_name, salary from employees 
-- where salary = 
-- (select min(salary) from employees);

-- Write a query to find the name (first_name, last_name), and salary of the employees whose salary is greater than the average salary of all departments.
-- The word ALL, which must follow a comparison operator, means "return TRUE if the comparison is TRUE for ALL of the values in the column that the subquery returns."  
-- select first_name, last_name, salary from employees
-- where salary >
-- all(select avg(salary) from employees group by department_id); 

-- Write a query to find the name (first_name, last_name) and salary of the employees who earn a salary that is higher than the salary of all the Shipping Clerk 
-- (JOB_ID = 'SH_CLERK'). Sort the results of the salary of the lowest to highest. 
-- select first_name, last_name, salary from employees
-- where salary >
-- all(select salary from employees where job_id ='SH_CLERK')
-- order by salary;

-- Write a query to find the name (first_name, last_name) of the employees who are not supervisors.(判断是否supervisor是用employee_id与manager_id做比较，如果相等即为supervisor )
-- exists关键字用于判定后续搜索结果是否存在，如果存在为真，不存在为假
-- 子查询除了可以从其他表中查询数据，还可以把同一个表当作两个表来进行查询，下面的employee a与employee b就是同一个表格进行分表
-- SELECT b.first_name,b.last_name
-- FROM employees b 
-- WHERE NOT EXISTS (SELECT 'X' FROM employees a WHERE a.manager_id = b.employee_id)
-- order by first_name;

-- Write a query to display the employee ID, first name, last name, and department names of all employees.
-- select后的子查询 
-- select employee_id, first_name, last_name, 
-- (select department_name from departments d
--  where d.department_id = e.department_id) as department_name 
--  from employees e order by employee_id;  

-- Write a query to display the employee ID, first name, last name, salary of all employees whose salary is above average for their departments.
-- 与独立子查询不同，相关子查询是使用外部查询中的数据的子查询。 换句话说，相关的子查询取决于外部查询。 对外部查询中的每一行对相关子查询进行一次评估。
-- select employee_id, first_name, last_name, salary from employees as A
-- where salary >
-- (select avg(salary) from employees  
-- where department_id = A.department_id)
-- order by salary;

-- Write a query to fetch even numbered records from employees table.
-- 伪列rownum: https://blog.csdn.net/qq_27922171/article/details/86477544 
-- SET @i = 0; 
-- SELECT i, employee_id 
-- FROM (SELECT @i := @i + 1 AS i, employee_id FROM employees)
-- a WHERE MOD(a.i, 2) = 0;  

-- Write a query to find the 5th maximum salary in the employees table.
-- SELECT DISTINCT salary 
-- FROM employees e1 
-- WHERE 5 = (SELECT COUNT(DISTINCT salary) 
-- FROM employees  e2 
-- WHERE e2.salary >= e1.salary);

-- Write a query to find the 4th minimum salary in the employees table.
-- select distinct salary 
-- from employees e1
-- where 4 = (select count(distinct salary)
-- from employees e2
-- where e2.salary <= e1.salary ) ;

-- Write a query to select last 10 records from a table.
-- SELECT * FROM (
-- SELECT * FROM employees ORDER BY employee_id DESC LIMIT 10) sub
-- ORDER BY employee_id ASC;

-- Write a query to list the department ID and name of all the departments where no employee is working.
-- select department_id, department_name from departments d
-- where d.department_id not in
-- (select distinct department_id from employees);

-- Write a query to get 3 maximum salaries. 
-- SELECT DISTINCT salary 
-- FROM employees a 
-- WHERE 3 >= (SELECT COUNT(DISTINCT salary) 
-- FROM employees b 
-- WHERE b.salary >= a.salary) 
-- ORDER BY a.salary DESC;

-- Write a query to get 3 minimum salaries.
-- select distinct salary from employees e1
-- where 3>=(select count(distinct salary)
-- from employees e2
-- where e2.salary <= e1.salary)
-- order by e1.salary;

-- Write a query to get nth maximum salaries of employees.
select * from employees e1
where 1 = (select count(distinct salary)
from employees e2
where e2.salary > e1.salary); 
 

