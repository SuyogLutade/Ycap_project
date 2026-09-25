create database proj;
use proj;

create table employees(
emp_id  int  primary key,
emp_name varchar(30),
manager_id int default 1
);

select * from employees;

insert into employees values
(1,"Amol",Null),
(2,"Rahul",1),
(3,"Priya",1),
(4,"Sneha",2);

select 
	e.emp_name as Employee,
    m.emp_name as Manager
from employees e
left join employees m
on e.manager_id=m.emp_id;