-- 1. Write a query to display the first day of the month (in datetime format) three months before the current month.
-- extract(a from b)是在b日期内以a的格式(year_month_day)提取  
--  period_add(date,number) 在date的基础上加number，number为负数则为减，number为整数为加
-- 在这里*100+1是因为YYYY-MM在系统中是以YYYYMM数值格式存在，比如2021-09是202109，因此乘以100就变为20210900，+1变为20210901，再用date(20210901)转换为2021-09-01 
-- SELECT date(((PERIOD_ADD
--   (EXTRACT(YEAR_MONTH 
--      FROM CURDATE()),-3)*100)+1)); 

-- 2. Write a query to display the last day of the month (in datetime format) three months before the current month.
-- date_add 与 adddate 是一样的，格式都为adddate(date, interval value dateunit), dateunit可以是年，月或日或者小时，分，秒等
-- subdate 与 date_sub 也是同样效果，而且格式与adddate一样
-- dayofmonth(date)函数返回date中的日期
-- 可以使用最新函数last_day(date)来获取date中的月份的最后一天 
-- SELECT SUBDATE(date_add(curdate(), interval -2 month),
--          INTERVAL DAYOFMONTH(CURDATE()) day) 
--             AS LastDayOfTheMonth; 
select last_day(subdate(curdate(), interval 3 month));