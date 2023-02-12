create database Insurance2;
use Insurance2;
create table relationtype(relid int primary key,relation_name varchar(10));
create table providers_details(ID int primary key,
                               Company_name varchar(20),
                               Contact_no varchar(15),
                               Contactperson_name varchar(50));
create table topup(id int primary key,Amount bigint,des varchar(50));
create table cycledetails (start_yr year unique key,end_yr year unique key,provider_id int,cycle_id int primary key,status boolean,foreign key(provider_id) references providers_details(ID));
create table employee(emp_id int not null primary key,emp_name varchar(255) not null,emp_phoneno varchar(20),Bloodgroup varchar(10),emp_dob datetime,martial_s boolean);
create table dependant(parent_id int,dependent_id int primary key,typeofI varchar(10),dependent_name varchar(20),relationcategory int, dob datetime,Relation_name varchar(10), foreign key(parent_id) references employee(emp_id),foreign key(relationcategory) references relationtype(relid) );
create table relate (empid int unique key,cycleid int unique key,foreign key(empid)references employee(emp_id),foreign key(cycleid) references cycledetails(cycle_id));
create table relatetnc(cyc_id int unique key,top_id int unique key,foreign key(cyc_id) references cycledetails(cycle_id),foreign key(top_id) references topup(id));
drop table relatetnc;
insert into relationtype values(44,'Children');
insert into providers_details values(666,'qwertyui','9879998889','Anisha Deshmukh');
insert into topup values(205,60000,'fifthtoppup');
select * from cycledetails;
insert into cycledetails values('2021','2022',555,97,0);
alter table dependant modify column dob date;
insert into employee values(306,'Rajat V','9837744544','O+','2002-06-21','0');
select * from relationtype;
insert into dependant values(306,86,'Nominee','Soumya Patil',44,'2002-11-20','Friend');
drop table relate;
create table relate (empid int,cycleid int,foreign key(empid)references employee(emp_id),foreign key(cycleid) references cycledetails(cycle_id));
insert into relate values(306,96);
select * from topup;
create table relatetnc(cyc_id int,top_id int,foreign key(cyc_id) references cycledetails(cycle_id),foreign key(top_id) references topup(id));
show tables;
select * from cycledetails;
select * from relationtype;
select * from topup;
select * from employee;
select * from dependant;
select * from relatetnc;
select * from relate;
select * from providers_details;

