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

------ UC-4 Edit Existing Contact to AddressBook Table -------
Update AddressBook Set EmailId='saguukade12@gmail.com' Where FirstName='Saguna';
Update AddressBook Set Address='Nagar', City = 'chennai', StateName = 'Maharashtra' Where FirstName='Ganesh';
Update AddressBook Set Phonenum=9087741630 Where FirstName='Raghav';
Select * From AddressBook;

----- UC-5 Delete Existing Contact From Table --------
Delete From AddressBook Where FirstName='Amruta' And LastName = 'Sharma';
Select * From AddressBook;

----- UC-6 Retrieve Person Record From Table By City Or State ---------
Select * From AddressBook Where City='Kolhapur' Or StateName='Maharshtra';

------ UC-7 Count contact by city -------
SELECT city,COUNT(city) as Total_Count
FROM AddressBook 
GROUP BY city;

------ UC-8 Sort Contacts By Name In A City ----------
SELECT * FROM AddressBook 
WHERE city = 'Mumbai'
ORDER BY firstname;
			
------- UC-9 Add Type And Name --------
ALTER TABLE AddressBook
ADD Book_Name VARCHAR(20),
    Contact_Type VARCHAR(20);

UPDATE AddressBook
SET Contact_Type = 'Friends'
WHERE firstname in ('Sue','Mike');

UPDATE AddressBook
SET Contact_Type = 'Professional'
WHERE firstname in ('John','Liz');

UPDATE AddressBook
SET Contact_Type = 'Family'
WHERE firstname in ('Meg');

UPDATE AddressBook
SET City = 'Pune';

------ UC-10 Ability to get number of contact persons by Type------
select Count(*) as NumberOfContacts,Type
from Address_Book
Group by Type

--Update values for Type=Family--
update Address_Book
set AddressBookName='Mom',Type='Family'
where FirstName='Saguna'

--Update values for Type=Profession--
update Address_Book
set AddressBookName='Manager',Type='Profession'
where FirstName='Amruta'

-------- Creating Tables Based on ER Diagrams  --------
create table Address_Book(
Address_BookID int identity(1,1) primary key,
Address_BookName varchar(200)
)
insert into Address_Book values ('Ashs Book'),('Amruta Book')
select * from Address_Book

create table Contact_Person(
AddressBook_ID int,
Contact_ID int identity(1,1) primary key,
FirstName varchar(100),
SecondName varchar(100),
Address varchar(250),
City varchar(100),
State varchar(100),
zip BigInt,
PhoneNumber BigInt,
Email varchar(200),
foreign key (AddressBook_ID) references Address_Book(Address_BookID))

insert into Contact_Person values
(1,'Saguna','Vargheese','645 Catherine Street','Bangalore','Karnataka',243001,9842905050,'saguna@gmail.com'),
(2,'Amruta','Mathialagan','836 Heritage Rd','Chennai','Tamil Nadu',134002,98402000,'amruta11@gmail.com'),
(2,'Lavanya','Yadav','19 Augusta Avenue','Lucknow','Uttar Pradesh',113201,87210505053,'lavanya09@gmail.com'),
(1,'Raghav','Satesh','356 Newburgh','Bangalore','Karnataka',243001,9842905050,'raghav33@gmail.com')

select * from Contact_Person

create table ContactType
(ContactType_ID int identity(1,1) primary key,
ContactType_Name varchar(200)
)

insert into ContactType values
('Family'),('Friends'),('Profession')

select * from ContactType

create Table TypeManager(
ContactType_Identity int,
Contact_Identity int,
foreign key (ContactType_Identity) references ContactType(ContactType_ID),
foreign key (Contact_Identity) references Contact_Person(Contact_ID)
)

insert into TypeManager values
(1,3),
(2,3),
(3,1),
(1,2),
(2,4)
select * from TypeManager