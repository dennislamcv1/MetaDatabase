# Developing functions in MySQL 



## Lab Instructions

Lucky Shrub needs to query their database. They can do this by using functions and stored procedures in MySQL. 

In this lab, you must complete a series of tasks to help Lucky Shrub staff query data from the Orders table in their database. 

The Orders table contains information about the Order ID, Client ID, Product ID, Quantity and Cost as shown in the following screenshot.

 ![Orders table](images/orders.PNG) 

**Note:** Before you begin, make sure you know how to access [MySQL environment](https://www.coursera.org/learn/advanced-mysql-topics/supplement/Xp5Mg/how-to-access-mysql-environment).


##  Prerequisites  

First, create the Lucky Shrub database in your MySQL environment. Then, create and populate the Orders table with the relevant data inside the Lucky Shrub database. 

The code to create the database and the Orders table is listed below.  

1: Use the following code to create the database: 

```SQL 
CREATE DATABASE Lucky_Shrub;
``` 

2: Make use of the following code to use the database:  

```SQL 
USE Lucky_Shrub; 
``` 

3: Use the following code to create the Orders table:  

```SQL 
CREATE TABLE Orders (OrderID INT NOT NULL PRIMARY KEY, ClientID VARCHAR(10), ProductID VARCHAR(10), Quantity INT, Cost DECIMAL(6,2), Date DATE); 
``` 

4: Use the following code to insert the data:  

```SQL 
INSERT INTO Orders(OrderID, ClientID, ProductID , Quantity, Cost, Date) VALUES
(1, "Cl1", "P1", 10, 500, "2020-09-01"),  
(2, "Cl2", "P2", 5, 100, "2020-09-05"),  
(3, "Cl3", "P3", 20, 800, "2020-09-03"),  
(4, "Cl4", "P4", 15, 150, "2020-09-07"),  
(5, "Cl3", "P3", 10, 450, "2020-09-08"),  
(6, "Cl2", "P2", 5, 800, "2020-09-09"),  
(7, "Cl1", "P4", 22, 1200, "2020-09-10"),  
(8, "Cl3", "P1", 15, 150, "2020-09-10"),  
(9, "Cl1", "P1", 10, 500, "2020-09-12"),  
(10, "Cl2", "P2", 5, 100, "2020-09-13"),  
(11, "Cl4", "P5", 5, 100, "2020-09-15"), 
(12, "Cl1", "P1", 10, 500, "2022-09-01"),  
(13, "Cl2", "P2", 5, 100, "2022-09-05"),  
(14, "Cl3", "P3", 20, 800, "2022-09-03"),  
(15, "Cl4", "P4", 15, 150, "2022-09-07"),  
(16, "Cl3", "P3", 10, 450, "2022-09-08"),  
(17, "Cl2", "P2", 5, 800, "2022-09-09"),  
(18, "Cl1", "P4", 22, 1200, "2022-09-10"),  
(19, "Cl3", "P1", 15, 150, "2022-09-10"),  
(20, "Cl1", "P1", 10, 500, "2022-09-12"),  
(21, "Cl2", "P2", 5, 100, "2022-09-13"),   
(22, "Cl2", "P1", 10, 500, "2021-09-01"),  
(23, "Cl2", "P2", 5, 100, "2021-09-05"),  
(24, "Cl3", "P3", 20, 800, "2021-09-03"),  
(25, "Cl4", "P4", 15, 150, "2021-09-07"),  
(26, "Cl1", "P3", 10, 450, "2021-09-08"),  
(27, "Cl2", "P1", 20, 1000, "2022-09-01"),  
(28, "Cl2", "P2", 10, 200, "2022-09-05"),  
(29, "Cl3", "P3", 20, 800, "2021-09-03"),  
(30, "Cl1", "P1", 10, 500, "2022-09-01");    
```   
 

## There are two main objectives in this activity:
 
* Develop a user defined function.
* Develop a stored procedure. 

## Tasks Instructions 

Please attempt the following tasks to make it easier for Lucky Shrub staff to query data from their database. 

**Task 1:** 

Create a SQL function that prints the cost value of a specific order based on the user input of the OrderID. 

The expected output result should be the same as the result in the screenshot below when you call the function with OrderID 5.    

![Task 1 output](images/task1output.PNG) 


**Task 2:** 

Create a stored procedure called "GetDiscount". This stored procedure must return the final cost of the customer’s order after the discount value has been deducted. The discount value is based on the order’s quantity. 

The stored procedure must have the following specifications: 

The procedure should take one parameter that accepts a user input value of an OrderID. 
The procedure must find the order quantity of the specific OrderID. 
If the value of the order quantity is more than or equal to "20" then the procedure should return the new cost after a 20% discount. 
If the value of the order quantity is less than "20" and more than or equal to "10" then the procedure should return the new cost after a 10% discount.

The expected output result should be the same as the result in the screenshot below when you call the procedure with OrderID 5.

![Task 2 output](images/task2output.PNG)  

You can compare and check your answers with the solutions in the Solution section.
Remember that you can achieve the same result in different ways. This is fine as long the code executes as expected.
 

