use shell ;
create table employee(Ecode int primary key , Name text ,Dept varchar(20),Hiredate date);
insert into employee values(1001,"Dan","AUT-01",'2015-01-07');
insert into employee values(1002,"Lynn","UIT-01",'2015-02-28');
insert into employee values(1003,"Amy","AUT-02",'2015-05-05');
insert into employee values(1004,"Jae","NBT-01",'2016-03-03');
insert into employee values(1005,"Jose","AUT-02",'2016-06-06');
insert into employee values(1006,"David","UIT-01",'2017-05-04');
insert into employee values(1007,"Brian","NBT-02",'2017-12-25');
insert into employee values(1008,"Linda","AUT-03",'2019-02-02');
insert into employee values(1009,"Peter","NBT-03",'2019-05-06');
select*from employee;

create table project (Ecode int primary key , project varchar(50),critical int );
insert into project values (1001,"RIT",1);
insert into project values (1002,"QUBEC",2);
insert into project values (1003,"MUES",1);
insert into project values (1004,"RIT",2);
insert into project values (1005,"NQX",1);
insert into project values (1006,"QUBEC",2);
insert into project values (1007,"QREV",3);
Select *from project;

create table critical(Critical int , DES varchar(20));
insert into critical values (1,"High");
insert into critical values (2,"COOL");
insert into critical values (3,"LOW");


select*from critical;
select*from employee;
select*from project;

-- Q1
select * from employee inner join project where employee.Ecode=Project.Ecode;

-- Q2
select * from employee left join project on employee.Ecode=Project.Ecode where Project.Ecode is null ;

-- Q3
select employee.Ecode,count(employee.Ecode) from employee inner join project where employee.Ecode=Project.Ecode group by employee.Ecode;

-- Q4
select*from employee inner join project where employee.Ecode=Project.Ecode and project.project = "RIT";

-- Q5
select*from employee inner join project inner join critical where employee.Ecode 
=Project.Ecode and Project.critical=Critical.critical and critical.DES IN ("High","COOL");

-- Q6
select*from employee where Hiredate between "2019-05-01"and "2019-05-31";

-- Q7

select left(Dept,3),count(left(Dept,3)) from employee group by Dept;

-- Q8
select *from employee where left(Dept,3)="AUT";

-- Q9
select project,count(project) from project group by project;

-- Q10

select*from employee inner join project inner join critical where employee.Ecode 
=Project.Ecode and Project.critical=Critical.critical and employee.Name = "Brian";

-- Q11
select*from employee inner join project inner join critical where employee.Ecode 
=Project.Ecode and Project.critical=Critical.critical and project.project ="RIT";

