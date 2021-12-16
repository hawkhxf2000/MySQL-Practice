# Write a SQL statement to create a table named countries including columns country_id, country_name and region_id and make sure that
# the country_id column will be a key field which will not contain any duplicate data at the time of insertion.

drop table countries;
create table if not exists countries
(
country_id varchar(2) primary key unique not null,
country_name varchar(40) not null,
region_id decimal(4,0) not null

);