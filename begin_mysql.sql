## Agenda
/*
1.1. Introduction to Databases
Definition: A database is an organized collection of data, typically stored 
and accessed electronically from a computer system.
Purpose: Databases store information in a structured way, 
allowing efficient data retrieval, management, and manipulation.
*/
/*
1. MySQL Create Databases
2. MySQL Create Table without constraints
3. MySQL Insert Data Into Table
4. MySQL Drop Table
5. MySQL DROP Databases
6. Hands On excercises- Creating and Dropping Databases and Tables
*/

## create the database
create database LibraryDb;

create database ecommercedb;

/*Best Practices:
1. Naming Conventions: Use meaningful and consistent names (e.g., LibraryDB, ECommerceDB).
2. Avoid Reserved Keywords: Ensure database names do not clash with MySQL reserved keywords.
3. Use Lowercase Letters: While MySQL is case-insensitive on Windows, 
it is case-sensitive on Unix-based systems. Consistency avoids confusion.*/


## Data Manipulation Excercises and Practise

use companydb;

create table customer_info(
id int auto_increment Primary key,
first_name varchar(25),
last_name varchar(25),
salary integer
);

# insert into customer_info table
insert into customer_info(first_name,last_name,salary)
values("Krish","Naik",50000);

select * from customer_info; 

insert into customer_info(first_name,last_name,salary)
values
("Darius","N",50000),
("Mahendra","B",50000),
("Ankit","Sharma",Null);

## get the records of the customers who salary is missing
select first_name,last_name from customer_info where salary is null;
select * from customer_info where salary is null;

select first_name,last_name from customer_info where salary is not null;
select * from customer_info where salary is not null;

## sql update statemet to replace null values
update customer_info set salary=60000
where id=4;

## delete
delete from customer_info
where id=3;

select * from customer_info;

insert into customer_info(first_name,last_name,salary)
values
(4,"Darius","N",50000);

## Alter Mysql
## Add column
alter table customer_info
add column dob Date;

## add multiple columns
alter table customer_info
add column email varchar(25),
add column address varchar(25);


## see the schema of the table
desc customer_info;

## modify the column
alter table customer_info
modify address varchar(30);
## drop a column
alter table customer_info drop column email;