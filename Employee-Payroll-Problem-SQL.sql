#uc1 Created database payroll_service

create database payroll_service;
show databases;
use payroll_service;

#uc2 Created table employee_payroll for database

create table employee_payroll(
id int unsigned not null auto_increment,
name varchar(150) not null ,
salary double not null,
start date not null,
primary key (id)
);

#uc3 Inserting values into table

insert into employee_payroll (name,salary,start) values
('Vaibhav','10000.0','2021-02-03');

#uc4 Displayed all table information

select * from employee_payroll;

#uc5 Ability to retrieve salary data for a particular employee as well as all employees who have joined in a particular data range from the payroll service database

select * from employee_payroll where name='Vaibhav';
select * from employee_payroll where start between cast('2021-02-03' As date)

#uc6 add Gender to Employee Payroll Table and Update the Rows to reflect the correct Employee Gender

alter table employee_payroll add gender char(1);
update  employee_payroll set gender='M' where name ='Vaibhav';

#uc7 find sum, average, min, max and number of male and female employees

select salary from employee_payroll;
select sum(salary) from employee_payroll;  
select min(salary) from employee_payroll;  
select max(salary) from employee_payroll;  
select count(salary) from employee_payroll;  
select avg(salary) from employee_payroll;  
select sum(salary) from employee_payroll where
	gender='M' group by gender;