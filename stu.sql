insert into student(rollno , name ) values(108,'shreyas');
alter table student add column fees int ;   -- add column fees
alter table student change name studentname text ;  -- change the column name from name to studentname 
alter table student modify studentname varchar(100);  -- change the datatype of studentname
desc student ;
alter table student rename stu ; -- rename of tablenamestu
select*from stu;
alter table stu add primary key(rollno) ;
desc stu;
-- delete from stu ; -- it will delete all the records from the given table 
select *from stu;