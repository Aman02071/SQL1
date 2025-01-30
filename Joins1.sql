use shell;
create table department(dept_id int primary key ,dept_name varchar(100));
insert into department values(101 , "HR" );
insert into department values(102 , "Acc" );
insert into department values(103 , "Finance" );
insert into department values(104 , "IT" );
insert into department values(105,"Sales");
select*from department;
select*from emp;
alter table emp add column dept_id int;
update emp set dept_id =101 where id = 121;
update emp set dept_id =102 where id = 123;
update emp set dept_id =103 where id = 129;
update emp set dept_id =104 where id = 134;
delete from department where dept_id =105;

select *from emp ;
-- Joins (inner joins ,left joins,right joins ,cross join,outer join)
-- inner join - both common data 
select*from emp inner join department where emp.dept_id=department.dept_id;
-- left join
select*from emp left join department on emp.dept_id=department.dept_id;
-- common data + left table -- 
select*from emp right join department on emp.dept_id=department.dept_id;
-- common data + right table data

select*from emp cross join department ;
-- cross joins is also known as cartessian product
select*from emp cross join department where emp.dept_id = department.dept_id;
-- the above query will work as same as inner join when we add where clause with inner join

-- i want to know in which department no one is working
select*from emp right join department on emp.dept_id = department.dept_id where emp.id is null;





