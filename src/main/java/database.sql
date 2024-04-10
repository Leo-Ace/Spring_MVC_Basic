create database spring_demo2;
go
use spring_demo2;
go

create table students(
	id int primary key identity,
	name nvarchar(255) not null,
	gender tinyint,
	birthday date,
	address nvarchar(255),
	phone varchar(255),
	email nvarchar(255),
	status bit
);
