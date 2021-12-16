# 11. Write a SQL statement to insert records into the table countries to ensure that the country_id column will not contain any duplicate
# data and this will be automatically incremented and the column country_name will be filled up by 'N/A' if no value assigned for that column.

alter table countries modify country_name varchar(40) default 'N/A';
insert into countries (region_id) values(109); 