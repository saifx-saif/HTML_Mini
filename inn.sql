drop table test;
create table test(student_name varchar(20),score number);
insert into test(student_name,score) values ('ABC',2);
insert into test(student_name,score) values ('ACN',5);
insert into test(student_name,score) values ('NCA',9);
insert into test(student_name,score) values ('CNN',8);
insert into test(student_name,score) values ('BAC',7);
insert into test(student_name,score) values ('ACN',9);
insert into test(student_name,score) values ('ANN',5);
insert into test(student_name,score) values ('ANC',6);
insert into test(student_name,score) values ('AMC',3);

select distinct student_name from test where score>5; --find the distinct student name where score>5--

select student_name from test where student_name like '%CN%' or exists(select student_name from test where student_name like '%AN%');
--find the student name where CN and AN is a part of the string--
select avg(score) from test;
select max(score) from test;
select student_name from test where score >= (select avg(score) from test) and  score <= (select max(score) from test);
--print in the range off avg and max--
select student_name from test where student_name like '_N_';
select (select sum(score) from test where student_name like '%N')-( select min(score) from test where student_name like 'A%') as answer from dual;
-- sum of the string having last character N - min of string having  first character as A --


