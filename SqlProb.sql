
create database payroll_service

select name from sys.databases

use payroll_service

create Table employee_payroll
(
id int identity(1,2),
name varChar(50),
salary money,
start_date date,
)

select * from employee_payroll

insert into employee_payroll values
('Ramesh', 23400.00, '2018-03-10'),
('Terissa', 10000.00, '2018-08-10'),
('Charlie', 49000.00, '2018-09-12')

select * from employee_payroll

alter table employee_payroll add gender char(1) null

select sum(salary) from employee_payroll where gender = 'M'

select name, gender, avg(salary) from employee_payroll group by gender , name

select DB_NAME()

select * from sys.tables

alter table employee_payroll add
phone varchar(15),
address varchar(200),
department varchar(50) not null default 'CS'

alter table employee_payroll add constraint DF_India default 'India' for address

insert into employee_payroll (name,salary,start_date,gender,phone) values ('Amit', 34000.0,'2022-03-21','M','8729191919')

alter table employee_payroll add
Basic_pay money,
Deductions money,
Taxable_Pay money,
Income_tax money,
Net_pay money

select * from employee_payroll

update employee_payroll set department= 'Sales' where name ='terissa'

insert into employee_payroll (name,salary,start_date,gender,phone) values ('Terissa', 10000.0,'2019-11-13','F',9404049040)
