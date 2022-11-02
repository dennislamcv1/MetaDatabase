# Changing table structure 

 
## Lab Instructions

Mangata and Gallo is a jewelry store that specializes in special occasions like engagements, weddings and anniversaries. The jewelry company primarily operates online and has a small storefront in Austin, Texas with an atelier attached for browsing. The company has asked you to create a table in their database called 'Staff'. This table must contain the records of all staff members.  

<br><br>
**Note:** Before you begin, make sure you know how to access [MySQL environment](https://www.coursera.org/learn/database-structures-and-management-with-mysql/supplement/BSZK6/how-to-access-mysql-environment).
<br><br>
###  Prerequisites  

To complete this lab, you need to have the Mangata and Gallo database so that you can create the 'Staff’ table inside it. If you don't have this database, complete the following steps to create it.   

<br> 

1: Create database 

```SQL 

CREATE DATABASE Mangata_Gallo; 

``` 

2: Use database 

```SQL 

USE Mangata_Gallo; 

``` 
 

## This activity has two main objectives:


1. Create the 'Staff' table in Mangata and Gallo database.  

2. Make the necessary changes to the table structure. 
  

## Exercise Instructions 

Please attempt the following tasks. 

 
**Task 1:** Write a SQL statement that creates the Staff table with the following columns. 

* StaffID: INT 

* FullName: VARCHAR(100) 

* PhoneNumber: VARCHAR(10)  

The table structure should be the same as the following screenshot (assuming that you have created and populated the table correctly.)  

![Staff table structure](images/staff.PNG) 
 

**Task 2:** Write a SQL statement to apply the following constraints to the Staff table. 

* StaffID: INT NOT NULL and PRIMARY KEY 
 
* FullName: VARCHAR(100) and NOT NULL

* PhoneNumber: INT NOT NULL

 
The expected output result should be the same as the following screenshot (assuming that you have created and populated the tables correctly.)  

![Staff table structure with constraints](images/staff1.PNG) 
 

**Task 3:** 

Write a SQL statement that adds a new column called 'Role' to the Staff table with the following constraints. 

* Role: VARCHAR(50) and NOT NULL 

The expected output result should be the same as the following screenshot (assuming that you have created and populated the tables correctly.)

![Staff table structure with role column](images/staff2.PNG)


**Task 4:** 

Write a SQL statement that drops the Phone Number column from the 'Staff' table.  

The expected structure of the table after removing the Phone Number column should be the same as the following screenshot (assuming that you have created and populated the tables correctly.)  

![Staff table structure after removing the Phone Number column](images/staff3.PNG) 

 
