-- 7. Write a SQL statement to insert one row in jobs table to ensure that no duplicate value will be entered in the job_id column.

-- Create the table jobs.

-- CREATE TABLE IF NOT EXISTS jobs ( 
-- JOB_ID integer NOT NULL UNIQUE , 
-- JOB_TITLE varchar(35) NOT NULL, 
-- MIN_SALARY decimal(6,0)
-- );

-- INSERT INTO jobs VALUES(1001,'OFFICER',8000);

-- mysql> SELECT * FROM jobs;
-- +--------+-----------+------------+
-- | JOB_ID | JOB_TITLE | MIN_SALARY |
-- +--------+-----------+------------+
-- |   1001 | OFFICER   |       8000 |
-- +--------+-----------+------------+

CREATE TABLE IF NOT EXISTS jobs ( 
JOB_ID integer NOT NULL UNIQUE , 
JOB_TITLE varchar(35) NOT NULL, 
MIN_SALARY decimal(6,0)
);
insert into jobs values(1001,'OFFICER',8000);
select* from jobs;