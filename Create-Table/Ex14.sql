# Write a SQL statement to create a table job_history including columns employee_id, start_date, end_date, job_id and department_id and 
# make sure that, the employee_id column does not contain any duplicate value at the time of insertion and the foreign key column job_id 
# contain only those values which are exists in the jobs table.

-- drop table job_history;
create table job_history 
(
employee_id varchar(2) unique not null,
start_date date not null,
end_date date not null,
job_id varchar(3) not null,
department_id decimal(4,0),
foreign key(job_id) references jobs(job_id)
)engine=INNODB;

#当需要创建foreign key时，对应的其他表的column需要是primary key或者unique;