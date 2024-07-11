#creating database
CREATE DATABASE fever;
USE fever;
CREATE TABLE abh(id int);
CREATE TABLE tal(id int, username char);
CREATE TABLE users(id INT, username VARCHAR(50)
);
CREATE TABLE u2(id INT,username VARCHAR(50), 
constraint primarykey primary key(id)
);

INSERT INTO u2 values
(123,'abhinav');
INSERT INTO u2 values
(125,'abhishek');

SELECT * FROM u2;
INSERT INTO u2 values
(129,'jhon');
CREATE TABLE u3(
id INT PRIMARY KEY,
uname VARCHAR(50) UNIQUE);
INSERT INTO u3 VALUES(112 ,'karan');
INSERT INTO u3 VALUES(116 ,'VINAY');

CREATE TABLE u4(
id INT PRIMARY KEY,
USERNAME VARCHAR(50) UNIQUE,
AGE INT,
CHECK (AGE>18)
);
INSERT INTO u4 values
(129,'jhon',6);
INSERT INTO u4 values
(129,'jhon',81);
SELECT * FROM u4;
INSERT INTO u4 values
(1299,'jOONY',50);
#update u4 set age=1 where id= "put id here"
#drop table table name;
#drop database name of database;

Select * FROM u3 LIMIT 1;
Select * FROM marks;
Select * FROM marks WHERE name LIKE 'Olivia';
# why is like deffernt than = operator?
#
Select * FROM marks WHERE name = 'Olivia';
Select * FROM marks WHERE name LIKE  'J%';
Select * FROM marks WHERE name LIKE  'A%';
Select * FROM marks WHERE name LIKE  '%a';
Select * FROM marks WHERE name LIKE  '%a%';
Select * FROM marks WHERE name LIKE  '%e%';
Select * FROM marks WHERE name LIKE  '_a%';
Select * FROM marks WHERE section='B';
SELECT DISTINCT gender FROM marks;
SELECT DISTINCT section FROM marks;
SELECT DISTINCT section FROM marks ORDER BY section;
SELECT DISTINCT section FROM marks ORDER BY section DESC;
SELECT DISTINCT gender,class FROM marks;
SELECT DISTINCT class FROM marks;
SELECT SUM(maths) From marks;
SELECT maths+science+english FROM marks; #creation of colunm
SELECT maths+20 from marks;
SELECT name ,section, class, maths+science+english FROM marks;
SELECT *,maths+science+english FROM marks;
SELECT *,maths+science+english as total_marks FROM marks;
SELECT *,(maths+science+english)/2 as avg FROM marks;
use fever
select name,maths from marks order by maths DESC limit 5;
Select * from marks where class=9 AND section='d' and gender='f' order by science ASC limit 5
Select * ,maths+english+science as total_marks From marks where class=9
select min(maths),max(maths) from marks where gender='M'and class=10
select distinct gender from masai;
select distinct count(class) from marks;
#group by
Select gender
From marks
group by gender;
SELECT gender, count(*) as num_of_students
FROM marks GROUP BY gender;
#avg of marks of gender
select gender,AVG(maths) as avg_maths from marks group by gender
use fever
select * from marks;
select class from marks where maths>90 order by class;
SELECT class, max(maths) as maths
FROM marks GROUP BY class HAVING maths > 90 ORDER BY class;
#join------2/02/2024
create table t1(col1 int);
create table t2(col1 int);
insert into t1 VALUE (1),(2),(3),(4);
insert into t2 VALUE (1),(2),(3),(4);
# default join
select * from t1 join t2 on t1.col1=t2.col1
select * from t1 LEFT join t2 on t1.col1=t2.col1 # left join
select * from t1 RIGHT join t2 on t1.col1=t2.col1#right join

create table t3 (col3 char);
select * from t1 LEFT join t3 on t1.col1=t3.col3;

#--------
#---union
create table t1 (id int);
create table t2 (id int);
insert  into t1 values (1),(2),(3);
insert  into t2 values (1),(2),(3);
select * from t1
union
select * from t2;
select * from persons;

select count(id) as numrows, gender, 'Asia' as Continent
from persons 
where country IN ('India','Sri lanka')
group by gender;


select distinct country from persons order by country;

select count(id) as numrows, gender, 'Europe' as Continent
from persons 
where country IN ('Ireland','Spain','Italy')
group by gender;

select count(id) as numrows, gender, 'Asia' as Continent
from persons 
where country IN ('India','Sri lanka')
group by gender
Union
select count(id) as numrows, gender, 'Europe' as Continent
from persons 
where country IN ('Ireland','Spain','Italy')
group by gender;

select count(id) as numrows, gender, country
from persons 
group by gender, country;



select count(id) as numrows, gender,'18-28' as agegroup
from persons
where age Between 18 and 28
group by gender;

