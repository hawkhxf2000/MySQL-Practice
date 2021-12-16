# Write a SQL statement to create a table named countries including columns country_id,country_name and region_id and make sure that
# no duplicate data against column country_id will be allowed at the time of insertion.
-- drop table countries;
create table if not exists countries
(
country_id varchar(2) not null,
country_name varchar(40) not null,
region_id decimal(4,0),
unique(country_id)
);