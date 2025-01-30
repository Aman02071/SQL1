use shell;
create table hostel(studentrollno int primary key ,sname text not null,
age int check(age>=18),mobileno int unique , roomtype varchar(100) default
'AC-rooms');
select*from hostel;
insert into hostel values(101 ,'Aman',23,9887678,'Non-AC');
desc hostel;
insert into hostel(studentrollno,sname,age,mobileno)values(110 ,'Rahul',28,98678);
insert into hostel values(115 ,'Raina',23,978,'Non-AC');
insert into hostel values(117 ,'Vaishali',28,9878,'AC');
insert into hostel values(118 ,'Tushar',27,986545678,'Non-AC');
insert into hostel values(121 ,'Dhoni',28,988787678,'Non-AC');
select*from hostel;
