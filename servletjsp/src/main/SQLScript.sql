drop database if exists servletjsp;
create database servletjsp;
use servletjsp;
create table students
(
	rollno integer primary key auto_increment,
    firstname varchar(20),
    lastname varchar(20)
);