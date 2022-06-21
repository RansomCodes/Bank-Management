--Database Cration

Create Database bankdb;
use bankdb;

--Creation Of tables

--Account Table stores the account details of all the existing customers
Create Table Account(account_number varchar(30) primary key,
                     account_type varchar(20) not null,
                     balance integer not null);

Insert into account values("1243535","Savings",12435);
Insert into account values("1243242","Recurring",1435);
Insert into account values("1274825","Savings",99435);
Insert into account values("4354324","Savings",124300);
Insert into account values("3350350","Recurring",112322);
Insert into account values("3298530","Savings",13245095);

--stores the personal details of all the customers
Create table customer(customer_id varchar(30) primary key,
                      name varchar(40) not null,
                      phone_number varchar(10) not null
                      address varchar(50) not null);

insert into customer values("1243535","Namit Kumar",9053752340,"I-121,Malviya Nagar,Delhi");
insert into customer values("1243242","Abhinav",7714171400,"Sec-3,Dwarka,Delhi");
insert into customer values("1274825","Shreyansh Singh",9094552340,"FNo. 233, Great Valley Apts.,Noida");
insert into customer values("4354324","Akshay Khanna",6778752340,"H-11,Jankapuri,Delhi");
insert into customer values("3350350","Om Pal",9034590123,"A-13,Gurgaon,Haryana");
insert into customer values("3298530","Pulkit Samrat",8103752340,"F.No 101, Rising Society,Greater Noida");

--Employee table to store all the details about the customer and its role in the bank ecosystem
Create Table employee(employee_id varchar(20) primary key,
                      name varchar(40) not null,
                      designation varchar(20) not null,
                      phone_number varhcar(10) not null,
                      address varchar(50) not null);

insert into employee values("E535","Rahul Yadav","Manager",9953751340,"B-111,Mehrauli,Delhi");
insert into employee values("E242","Narendra SHah","Loan Officer",8884171400,"Sec-21,Dwarka,New Delhi");
insert into employee values("E825","Amit Modi","Loan Officer",9023902340,"FNo. 103, Great Valley Apts.,Noida");
insert into employee values("E324","Bhagwat Mohan","Reception",7890752340,"L-11, Uttam Nagr, Delhi");
insert into employee values("E350","Kishan Ravi","Accounts Officer",9032220123,"A-13, Kurukshetra,Haryana");
insert into employee values("E530","Arnab Chaudhary","Loan Officer",9909952340,"FNo. 101,Republican Society, Greater Noida");

--Loan Table to store the data about the customers who took the loan from bank
Cretae Table Loan(load_id varchar(20) primary key
                  loan_type varchar(20) not null,
                  amount integer not null,
                  loan_officer varchar(20) not null);

insert into loan values("1243535","Home Loan",9357385,"E242");
insert into loan value("3298530","Car Loan",97385,"E825");
insert into loan values("1243242","Education Loan",34385,"E530");
insert into loan values("4354324","Home Loan",8859085,"E242");

--Transaction Table to store all the details about the transactions done by the customer on his bank account
Create Table transaction(transaction_id integer primary key,
                         account_number varchar(20) not null,
                         transaction_type varchar(10) not null,
                         amount integer not null,
                         date_of_transaction date not null);

insert into transation values(12,"1243242","Debit",7358,"2021-06-12");
insert into transation values(24,"1243535","Credit",38478,"2021-06-23");
insert into transation values(124,"1243242","Creit",708,"2021-05-11");
insert into transation values(352,"3350350","Debit",7358,"2021-06-12");
insert into transation values(35,"1243535","Credit",7358,"2021-03-23");
insert into transation values(543,"1243242","Credit",7358,"2021-05-25");
insert into transation values(592,"3298530","Credit",7358,"2021-04-01");

--The tables are linked to each other to maintain referential integrity by adding these foreing keys
alter table customer add foreign key(customer_id) references account(account_number);
alter table load add foreign key(load_id) references amount(account_number);
alter table load add foreign key(loan_officer) references employee(employee_id);
alter table add foreign key(account_number) references account(account_number);
alter table customer add foreign key(customer_id) references account(account_number);
