-- 6. Write a SQL statement insert rows from country_new table to countries table.

-- Here is the rows for country_new table. Assume that, the countries table is empty.

-- +------------+--------------+-----------+
-- | COUNTRY_ID | COUNTRY_NAME | REGION_ID |
-- +------------+--------------+-----------+
-- | C0001      | India        |      1001 |
-- | C0002      | USA          |      1007 |
-- | C0003      | UK           |      1003 |
-- +------------+--------------+-----------+

insert into countries select * from country_new;
select * from countries;