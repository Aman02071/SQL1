use shell;
create table vizion (Empid int primary key , Empname varchar(100), Salary int , Dept varchar(10),Gender text);
insert into vizion values(1001,"Kavya",35000,"IT","F");
insert into vizion values(1002,"Rahul",45000,"ACC","M");
insert into vizion values(1003,"Suresh",85000,"IT","M");
insert into vizion values(1004,"Kaustubh",75000,"HR","M");
insert into vizion values(1005,"Tushar",85000,"HR","M");
insert into vizion values(1006,"Vaidya",45000,"IT","F");
select*from vizion;
select*, sum(salary) over(order by Empid) from vizion;

select*, dense_rank() over(partition by Dept order by salary desc) from vizion;
select*from vizion order by salary desc limit 2,1;


use shell;
create table zorio(Empid int primary key , Hire_date date, status text , YOE tinyint , Address text);
insert into zorio values(1001,"2021-01-01","Active",2,"DEL");
insert into zorio values(1002,"2023-01-01","Active",6,"KOL");
insert into zorio values(1003,"2023-01-01","Active",3,"DEL");
insert into zorio values(1004,"2021-01-01","Active",6,"DEL");
insert into zorio values(1005,"2011-01-01","Active",7,"BLR");
insert into zorio values(1006,"2017-01-01","Active",1,"BLR");
insert into zorio values(1007,"2019-01-01","Active",2,"MUM");
insert into zorio values(1008,"2007-01-01","Active",3,"HYD");

select*from zorio;
select*from vizion inner join zorio where vizion.Empid=zorio.Empid;
select*from vizion left join zorio on vizion.Empid=zorio.Empid;
select*from vizion right join zorio on vizion.Empid=zorio.Empid;
select*, rank() over( order by salary desc) from vizion inner join zorio where vizion.Empid=zorio.Empid;
select*, row_number() over( order by salary desc) from vizion inner join zorio where vizion.Empid=zorio.Empid;
update zorio  set status = "passive" where Empid = 1006;
select*from zorio;
select*from vizion left join zorio on vizion.Empid=zorio.Empid where status ="passive";

select vizion.Empid,vizion.Empname,vizion.salary,zorio.YOE from vizion right join zorio on vizion.Empid=zorio.Empid where zorio.YOE>3
order by vizion.salary;

select Dept, avg(salary)   from vizion group by Dept having avg(Salary)>60000;
SELECT v.Dept, v.Empname, v.Salary, 
ROW_NUMBER() OVER (PARTITION BY v.Dept ORDER BY v.Salary DESC) AS RowNum 
FROM vizion v 
WHERE ROW_NUMBER() OVER (PARTITION BY v.Dept ORDER BY v.Salary DESC) <= 3;


