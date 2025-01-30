select*from emp;
-- function in sql
-- 1] scalar function - Multiple output
-- 2] Aggregate function - Single output ,eg - sum(),count(),avg()
select id , ename,salary,doj,gender,city from emp;
-- what is the total salary of all employee
select sum(salary) as "Total Salary" from emp ;
-- average salary
select avg(salary) as "Average salary",max(salary),count(salary) ,min(salary)from emp ;
select id,upper(ename),avg(salary) as "Average salary",max(salary),count(salary) ,min(salary)from emp ;

--
select*from emp;
select * , year(doj),month(doj),day(doj) from emp ; -- Temporary column
-- i want to know the dayname of employee
select*,dayname(doj) from emp where dayname(doj)="Monday";
