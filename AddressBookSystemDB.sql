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

------- UC-3 Insert Data Into The AddressBook Table -----------
Insert Into AddressBook Values('saguna', 'Ukade', 'Pune', 'Pune', 'Maharashtra', 996123, 6754321987, 'saguu@gmail.com'),
						('Amruta', 'Sharma', 'Vashim', 'Mumbai', 'Maharashtra', 879456, 9807654321, 'amruta88@gmail.com'),	
						('Lavanya', 'Kulkarni', 'Vasai', 'Satara', 'Maharashtra', 965674, 7412585542, 'lavanya12@gmail.com'),	
						('Ganesh', 'Shahane', 'Mumbai', 'Kolhapur', 'Maharashtra', 098563, 9844334170, 'ganesh08@gmail.com'),	
						('Raghav', 'pande', 'Satara', 'Sangli', 'Maharashtra', 342156, 9087741630, 'raghav908@gmail.com');
Select * From AddressBook;