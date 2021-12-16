# Write a SQL statement to create a table countries including columns country_id, country_name and region_id and make sure that the
# column country_id will be unique and store an auto incremented value.

drop table countries;
create table if not exists countries
(
country_id int not null unique auto_increment,
country_name varchar(40) not null,
region_id decimal(4,0) not null
)