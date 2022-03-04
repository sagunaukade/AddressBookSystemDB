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
			