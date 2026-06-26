--creating a database called tasks_prog--
create database tasks_prog;

--use the tasks_prog database--
use [tasks_prog];

--creating a table [ entity ]
--columns are called task_id, task_name, task_description, task_dueDate, task_status 
--List of the columns 
--task_id datatype int , and auto-increment 
--task_name datatype varchar(amount of letters)
--task_description datatype varchar(50)
--task_dueDate datatype varchar()
--tast_status datatype varchar

create table poe_tasks(
task_id int primary key identity(1,1) , 
task_name varchar(100) ,
task_description varchar(100) ,
taskdueDate varchar(20) ,
task_status varchar(20)
);


--select all from the table poe_tasks
select * from poe_tasks;


