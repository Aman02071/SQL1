use shell;
create table EmployeeTable(EmpID int primary key ,EmpName text,Gender varchar(10),salary int
,city text);
insert into EmployeeTable values(1,'Arjun','M',75000,'Pune');
insert into EmployeeTable values(2,'Ekdanta','M',125000,'Bangalore');
insert into EmployeeTable values(3,'Lalita','F',150000,'Mathura');
insert into EmployeeTable values(4,'Mahadev','M',250000,'Delhi');
insert into EmployeeTable values(5,'Visakha','F',120000,'Mathura');
select*from EmployeeTable;
use shell;
create table EmployeeDetail(EmpID int  primary key , project varchar(10),EmpPosition text , DOJ date);
insert into EmployeeDetail values(1,"P1","Executive","2019-01-26");
insert into EmployeeDetail values(2,"P2","Executive","2020-05-04");
insert into EmployeeDetail values(3,"P1","Lead","2021-10-21");
insert into EmployeeDetail values(4,"P3","Manager","2018-11-29");
insert into EmployeeDetail values(5,"P2","Manager","2020-08-01");
select*from EmployeeDetail;
select*from EmployeeTable inner join EmployeeDetail where EmployeeTable.EmpID=EmployeeDetail.EmpID;
select*from EmployeeTable where salary between 200000 and 300000;
select city ,count(city),EmployeeTable.EmpName from EmployeeTable inner join EmployeeDetail where EmployeeTable.EmpID=EmployeeDetail.EmpID group by city;

select EmpID,salary,sum(salary) over(order by EmpID)  from EmployeeTable;
use shell;
select EmpID , salary,sum(salary) over(order by EmpID) as CF from EmployeeTable;
