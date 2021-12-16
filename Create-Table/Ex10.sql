 # Write a SQL statement to create a table named jobs including columns job_id, job_title, min_salary and max_salary, and make sure that, 
 # the default value for job_title is blank and min_salary is 8000 and max_salary is NULL will be entered automatically at the time of insertion
 # if no value assigned for the specified columns.
 
create table if not exists jobs
(
job_id varchar(3) not null unique,
job_title varchar(20) not null default '',
mini_salary float default 8000,
max_salary float default null
)
 