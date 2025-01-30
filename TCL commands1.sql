start transaction;
select*from emp;
savepoint s1;
select*from emp;
delete from emp where id = 121;
update emp set salary = 90000 where id = 141 ;
-- i want to revert thsi 2 command
rollback to s1;
select*from emp ;