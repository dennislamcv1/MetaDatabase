# Working with constraints 
 


## Lab Instructions 

Mangata and Gallo is a jewelry store that specializes in special occasions like engagements, weddings and anniversaries. The jewelry company primarily operates online and has a small storefront in Austin, Texas with an atelier attached for browsing. The company approached you to create three tables for their database called 'Clients', 'Orders' and 'Items' respectively. Each database must have all necessary constraints applied as specified in each task.  

 
The 'Clients' table contains the Client ID, full name and phone number of each client. 
 

The Orders table contains information about each order's Order ID, Client ID, Product ID, and Cost.  
 

The Items table contains information about the Item ID, Item name, and Item price. 
 

The relationship between the three table is illustrated in the following entity relationship diagram (ER-D).  

 ![- Mangata and Gallo ER-D](images/Jewelry.png) 

 

**Note:** Before you begin, make sure you know how to access [MySQL environment](https://www.coursera.org/learn/database-structures-and-management-with-mysql/supplement/BSZK6/how-to-access-mysql-environment). 

###  Prerequisites  

To complete this lab, you must have the Mangata and Gallo database in MySQL, so that you can create the three tables within it. If you do not have the database, then create it in MySQL using the following instructions.  

<br> 

The code to create and use the database is as follows:  

1: Create database 

```SQL 

CREATE DATABASE Mangata_Gallo; 

``` 

2: Use database 

```SQL 

USE Mangata_Gallo; 

``` 

 
## There is one main objective in this activity:   

* Apply commonly used types of constraints in MySQL.


## Exercise Instructions 

Please attempt the following tasks.

**Task 1:** Create the Clients table with the following constraints. 

* ClientID: INT, NOT NULL and PRIMARY KEY 

* FullName: VARCHAR(100) NOT NULL 

* PhoneNumber: INT, NOT NULL and UNIQUE 

 

The expected structure of the table should be the same as the following screenshot (assuming that you have created and populated the tables correctly.) 

![Clients table structure](images/clients.png) 



**Task 2:** Create the Items table with the following attributes and constraints: 

* ItemID: INT, NOT NULL and PRIMARY KEY 

* ItemName: VARCHAR(100) and NOT NULL 

* Price: Decimal(5,2) and NOT NULL 

 

The expected structure of the table should be the same as the following screenshot (assuming that you have created and populated the tables correctly.)  

![Items table structure](images/items.png) 

   

**Task 3:** Create the Orders table with the following constraints. 

* OrderID: INT, NOT NULL and PRIMARY KEY 

* ClientID: INT, NOT NULL and FOREIGN KEY 

* ItemID: INT, NOT NULL and FOREIGN KEY 

* Quantity: INT, NOT NULL and maximum allowed items in each order 3 only 

* COST Decimal(6,2) and NOT NULL 

 

The expected structure of the table should be the same as the following screenshot (assuming that you have created and populated the tables correctly.)  

![Orders table structure](images/orders.png) 

