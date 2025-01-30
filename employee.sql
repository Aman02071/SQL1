use shell;
create table emp(id smallint primary key , ename varchar(100),salary bigint,city varchar(100), doj date);
insert into emp values(123,'Aman',8000,'LKO','2022-09-17');
select *from emp;
insert into emp values(129,'Summit',6000,'LKO','2022-09-17');
insert into emp values(121,'Rohit',80000,'DEL','2021-09-17');
insert into emp values(134,'Sachin',5000,'BLR','2007-09-17');
insert into emp values(141,'Dhoni',12000,'LKO','2006-09-17');
desc emp;
update emp set city ='MUM' where id =141;
alter table emp add column gender varchar(1) after salary ;
update emp set gender ="M" where id=129;
-- to show the salary which has >5000
select*from emp where salary>5000;
-- to show the salary which has <8000
select*from emp where salary<8000;
select*from emp where salary<>5000; -- --<> sign is not equal to 
select*from emp where city<>'LKO';

-- And , OR operator
select*from emp where salary>7000 and city ='DEL';
select*from emp where salary>7000 OR city ='DEL';
-- increment diwali 10000
update emp set salary=salary+10000 where id=141;
-- i want to predict what would be the salary of employee after adding 5000 rs

select id , ename ,salary+500 as "Salary" ,gender,city,doj from emp ;

-- in and not in , between and not between is used for range 
-- i want to show the records of those employees who is coming from lko,del,mum

select *from emp where city ='LKO';  --  --single value check 
select *from emp where city in ("DEL","LKO","MUM"); -- --more than two values check 
select *from emp where city not in ("DEL","LKO","MUM");
select*from emp where salary between 8000 and 80000;
select*from emp where salary not between 8000 and 80000;

-- limit 
select*from emp limit 2 ; -- top 2 rows
select*from emp limit 2,1 ;   -- start from 2 row and goes to next row 
select*from emp limit 2,4;

-- Order by
select *from emp order by salary desc; -- descending order
select*from emp order by ename ;  -- ascending order

-- --wildcards = Pattern searching(%,__)
select*from emp where ename like "a%";   -- % means dont know
select*from emp where ename like "%t";
select*from emp where ename like "_____";    -- __ fixed character 



































































