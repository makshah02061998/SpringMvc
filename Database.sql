create database hdfc;
use hdfc;
drop table Employee;

create table Employee(
     id int not null primary key auto_increment,
     firstname varchar(50) not null,
     middlename varchar(50) not null,
     lastname varchar(50) not null,
     email varchar(50) not null,
     gender varchar(50) not null,
     department varchar(50) not null,
     post varchar(50) not null,
     location varchar(50) not null,
     mobileno int,
     address varchar(50) not null
);

select * from Employee;

CREATE TABLE Documents (
	id int not null primary key auto_increment,
    filename varchar(50)not null,
    empid int,
    FOREIGN KEY (empid) REFERENCES Employee(id)
);

select * from Documents;