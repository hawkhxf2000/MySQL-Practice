-- Write a SQL statement to change salary of employee to 8000 whose ID is 105, if the existing salary is less than 5000.

update employees 
set salary = 8000
where employee_id = 105 and salary < 5000;
