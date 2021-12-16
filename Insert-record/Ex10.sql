-- 10. Write a SQL statement to insert rows into the table countries in which the value of country_id column will be unique and
--  auto incremented.
-- 有自增长属性的列在插入数据时可以留白不写 
insert into countries (country_name, region_id)values('India',185);
insert into countries (country_name, region_id)values('Japan',102);
select * from countries;