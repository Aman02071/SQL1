use shell;
create table salesData(category text ,sales int , order_date date);
insert into salesData values('ELECTRONICS',20,"2021-01-01");
insert into salesData values('FURNITURE',32,"2021-01-02");
insert into salesData values('ELECTRONICS',45,"2021-02-08");
insert into salesData values('ELECTRONICS',31,"2021-02-04");
insert into salesData values('GROCERY',33,"2021-03-21");
insert into salesData values('ELECTRONICS',19,"2021-03-06");
insert into salesData values('APPLIANCES',21,"2021-04-07");
insert into salesData values('GROCERY',10,"2021-04-22");
SELECT*from salesData;
select category,avg(sales) as avg_sales from salesData group by category having count(category)>1 order by avg_sales DESC  ;
select year(order_date) as year,month(order_date) as month,day(order_date) as day,dayname(order_date) as dayname from salesData group by year,month,day,dayname  ;

use shell;
create table application (cand_id int , skills text);
insert into application values(101 ,'POWER BI');
insert into application values(101 ,'PYTHON');
insert into application values(101 ,'SQL');
insert into application values(102 ,'TABLEAU');
insert into application values(102 ,'SQL');
insert into application values(108 ,'PYTHON');
insert into application values(108 ,'POWER BI');
insert into application values(108 ,'SQL');
insert into application values(104 ,'PYTHON');
insert into application values(104 ,'EXCEL');
select*from application;
select cand_id,count(skills) from application where skills in ("POWER BI","PYTHON","SQL") GROUP BY cand_id having count(skills)=3 order by cand_id asc;



