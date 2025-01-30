Create database Shell;
use Shell;
create table student(rollno int , name text , class int );
select*from student;
insert into student values(101 , 'Aman' , 11);
insert into student values(102 , 'Rahul' , 10);
insert into student values(103 , 'Virat' , 12);
desc student;
use shell;
insert into student(rollno , name ) values(108,'shreyas');
alter table student add column fees int ;   -- add column fees
alter table student change name studentname text ;  -- change the column name from name to studentname 
alter table student modify studentname varchar(100);  -- change the datatype of studentname
desc student ;
alter table student rename stu ; -- rename of tablenamestu
select*from stu;
alter table stu add primary key(rollno) ;
desc stu;
delete from stu ; -- it will delete all the records from the given table 
delete from stu where rollno = 101;


