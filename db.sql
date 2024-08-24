CREATE DATABASE ORG;
show databases;
use org;

create table worker (
	worker_id int(255) not null primary key auto_increment,
    first_name varchar(25),
    last_name varchar(25),
    salary int(15),
    joining_date datetime , 
    department varchar(25)
);



INSERT INTO worker
(worker_id, first_name, last_name, salary, joining_date, department) VALUES
(001, 'Monika', 'Arora', 100000, '14-02-20 09.00.00', 'HR'),
(002, 'Niharika', 'Verma', 80000, '14-06-11 09.00.00', 'Admin'),
(003, 'Vishal', 'Singhal', 300000, '14-02-20 09.00.00', 'HR'),
(004, 'Amitabh', 'Singh', 500000, '14-02-20 000.00', 'Admin'),
(005, 'Vivek', 'Bhati', 500000, '14-06-11 09.00.00', 'Admin'),
(006, 'Vipul', 'Diwan', 200000, '14-06-11 09.00.00', 'Account'),
(007, 'Satish', 'Kumar', 75000, '14-01-20 09.00.00', 'Account'),
(008, 'Geetika', 'Chauhan', 90000, '14-04-11 09.00.00', 'Admin');

SELECT * from worker;

CREATE TABLE Bonus (
WORKER_REF_ID INT,
BONUS_AMOUNT INT (10),
BONUS_DATE DATETIME,
FOREIGN KEY (WORKER_REF_ID)
REFERENCES Worker (worker_id)
ON DELETE CASCADE
);

INSERT INTO Bonus
(WORKER_REF_ID, BONUS_AMOUNT, BONUS_DATE) VALUES
(001, 5000, '16-02-20'),
(002, 3000, '16-06-11'),
(003, 4000,'16-02-20'),
(001, 4500, '16-02-20'),
(002, 3500, '16-06-11');

CREATE TABLE Title (
WORKER_REF_ID INT,
WORKER_TITLE CHAR(25),
AFFECTED_FROM DATETIME,
FOREIGN KEY (WORKER_REF_ID)
REFERENCES Worker (worker_id)
ON DELETE CASCADE
);

INSERT INTO Title
(WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES
(001, 'Manager', '2016-02-20 00:00:00'),
(002, 'Executive', '2016-06-11 00:00:00'),
(008, 'Executive', '2016-06-11 00:00:00'),
(005, 'Manager', '2016-06-11 00:00:00'),
(004, 'Asst. Manager', '2016-06-11 00:00:00'),
(007, 'Executive', '2016-06-11 00:00:00'),
(006, 'Lead', '2016-06-11 00:00:00'),
(003 , 'Lead' , '2016-06-11 00:00:00');

create table account (
	id int primary key, 
    name varchar(255) unique , 
    balance int not null default 0
);
--  constraint acc_balance_check Check (balance >1000)


insert into account ( id ,name , balance ) values (1,'a' , 10000);

select * from account;

-- ALter commands 

-- Add new column 
alter table  account add interest float not null default 0 ;

desc account;
-- modify 
alter table account modify interest double not null default 0 ; 

desc account;

-- change column name 
alter table account change column interest  saving_interest float not null default 0;

desc account ;

-- drop column 
alter table account drop column saving_interest;
desc account;

-- rename the table 
alter table account rename to account_details;
desc account_details;




