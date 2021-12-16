# Write a SQL statement to create a table countries including columns country_id, country_name and region_id and make sure that the combination
# of columns country_id and region_id will be unique.

drop table countries;
create table if not exists countries(
country_id varchar(2) not null unique,
country_name varchar(40) not null,
region_id decimal(4,0) unique
-- constraint Country_Region unique(country_id, region_id)
);
