# Write a SQL statement to create a table employees including columns employee_id, first_name, last_name, email, phone_number hire_date, job_id,
# salary, commission, manager_id and department_id and make sure that, the employee_id column does not contain any duplicate value at the time of
# insertion and the foreign key columns combined by department_id and manager_id columns contain only those unique combination values, which
# combinations are exists in the departments table.

drop table employees;
create table employees
(
employee_id varchar(3) not null primary key,
first_name varchar(40) not null,
last_name varchar(40) not null,
email varchar(40) not null,
phone_number varchar(20) not null,
hire_date date not null,
job_id varchar(3) not null,
salary float not null,
commission float,
manager_id decimal(6,0) not null default 0,
department_id decimal(4,0) not null default 0,
constraint dept_mgr foreign key(department_id, manager_id) references departments(department_id, manager_id)
);