-- Write a SQL statement to increase the salary of employees under the department 40, 90 and 110 according to the company rules that, salary will be increased by 25% for the department 40, 15% for department 90 and 10% for 
-- the department 110 and the rest of the departments will remain same.


update employees set salary = case department_id
						when 40 then salary+(salary*0.25)
                        when 90 then salary+(salary*0.15)
                        when 110 then salary+(salary*0.1)
                        else salary
					end
				where DEPARTMENT_ID in (40,50,60,70,80,90,110);
select * from employees where department_id =40 or DEPARTMENT_ID = 90 or DEPARTMENT_ID = 110;