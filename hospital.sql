use shell ;
create table hospital(id tinyint primary key, hospitalname varchar(100),city 
text , inaugration date);
select*from hospital;
insert into hospital values(101 , 'Medanta','delhi','2020-08-16')
;
insert into hospital values(105 , 'Apollo','delhi','2018-09-6');
insert into hospital values(123 , 'Manipal','Bangalore','2000-11-19');
insert into hospital values(121 , 'Command','Delhi','2009-08-16');
-- how to delete a table and a database
drop database shell;  -- compelete database delete
drop table stu ; -- table has been deleted , data also deleted

-- UPDATE COMMAND
update hospital set city='Lucknow' where id =105;
update hospital set hospitalname='ECHS' where id =101;
