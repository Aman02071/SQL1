use shell;
create table department(dept_id int primary key ,dept_name varchar(100));
insert into department values(101 , "HR" );
insert into department values(102 , "Acc" );
insert into department values(103 , "Finance" );
insert into department values(104 , "IT" );
insert into department values(105,"Sales");
select*from department;
create table did(dept_id int primary key , name  text , phone_no int , city text);
insert into did values (101,'aman',886566,'lko');
insert into did values (102,'Rahul',88656,'del');
insert into did values (103,'Dhruv',866,'lko');
insert into did values (104,'Vaishali',887655566,'kan');
insert into did values (105,'Raina',888643,'blr');
insert into did values (106,'dhoni',82366,'blr');
insert into did values (107,'Vishal',906566,'lko');

select*from did;
use shell;
select *from department inner join did where department.dept_id=did.dept_id ;
select*from department left join did on department.dept_id=did.dept_id;
select*from department right join did on department.dept_id=did.dept_id;
select did.city , count(did.city) from department right join did on department.dept_id=did.dept_id group by did.city ;
select*from department left join did on department.dept_id=did.dept_id
union all
select*from department right join did on department.dept_id=did.dept_id;


create view rahul as select phone_no,city from did where city ='lko';
select*from rahul;

select*from department;

create index vizag on  department (dept_id);
show index from department;


use shell;
create  table visual (std_name text , std_id int primary key, Total_marks int  , address text );
insert into  visual values ('aman',101,80,'lko');
insert into  visual values ('Kohli',102,23,'del');
insert into  visual values ('Vinay',103,99,'blr');
insert into  visual values ('Sakshi',106,99,'lko');
insert into  visual values ('Rohini',104,96,'lko');
insert into  visual values ('Summit',105,23,'del');
select*from visual;
select *, dense_rank() over(order by Total_marks desc) from visual;
select *, rank() over(order by Total_marks desc) from visual;
select *, row_number() over(order by Total_marks desc) from visual;
select * from visual order by Total_marks desc limit 1,1;
select address,count(address)  from (select distinct address from visual)group by address;
select address, count(address) from visual group by address;
select address,count(address) from visual group by address having count(address)>1 order by address ;

select *, dense_rank() over(partition by address  order by Total_marks desc ) from visual ;

