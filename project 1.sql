use shell ;
-- Q1
create table student(Ecode int primary key , Name text not null,subject varchar(20) ,Marks tinyint , Location varchar(10),Gender varchar(2),DOB date);
select *from student ;
insert into student values(1001,"Smith","A3",56,"MN","M",'1996-06-03');
insert into student values(1002,"Carol","A1",65,"MI","F",'1994-09-04');
insert into student values(1003,"Mike","A2",71,"AL","M",'1992-03-20');
insert into student values(1004,"Gigi","A2",85,"CA","F",'1995-01-01');
insert into student values(1005,"Mary","A1",82,"MN","F",'1989-02-05');
insert into student values(1006,"Baris","A3",91,"MI","M",'1994-11-07');
insert into student values(1007,"Nicole","A1",89,"AL","M",'1993-02-06');
SELECT*FROM STUDENT ;
-- Q2
select*from student where Ecode = 1001 ;
-- Q3
select*from student where Gender ="M";
-- Q4
select*from student where Gender ="M" and subject ="A2";
-- Q5
select*from student where location in ("MN","CA","AL");
-- Q6
select*from student where location not in ("MI","CA");
-- Q7
select*from student where location <> ("MN") and subject <>"A3";
-- Q8
select * from student where DOB >='1995-01-01';

-- 	q9
select*from student order by DOB DESC ;
-- q10
select*from student order by Name ;
-- q11
select*from student where DOB = '1994-09-04';

