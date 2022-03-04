------------ WELCOME TO THE ADDRESS BOOK SYSTEM DATABASE ----------------

--------- UC-1 Create Database ----------
create database AddressBookSystemDB;
use AddressBookSystemDB;

-------- UC-2 Create AddressBook Table -----------
Create Table AddressBook(
	FirstName varchar(50) not null,
	LastName varchar(50),
	Address varchar(255),
	City varchar(50),
	StateName varchar(50),
	ZipCode int,
	PhoneNum bigint,
	EmailId varchar(50)
);