# Working with MySQL Functions 

 
## Lab Instructions: 

  
Mangata and Gallo is a jewelry store that specializes in special occasions like engagements, weddings and anniversaries. In this lab, you are going to complete the following tasks to make it easier for M & G staff to format and filter data using MySQL string, Math, Date and Comparison functions for their reports.   

  

<br>  

  

The item & mg_orders tables used for this lab contains data as shown below.   

  

![item table](images/M3L1I10item.PNG)  

![mg_orders table](images/M3L1I10mg_orders.PNG) 

  

Note: Before you begin, make sure you know how to access [MySQL environment](https://www.coursera.org/learn/database-structures-and-management-with-mysql/supplement/BSZK6/how-to-access-mysql-environment). 

     
###  Prerequisites   

  
To complete this lab, you need to have the jewelry store database of M & G created in MySQL. Also, you need to have the item and mg_orders tables created and populated with relevant data inside the jewelry store database.   

The code to create the database and the tables are listed below.   


1: Create database  


```SQL  

CREATE DATABASE jewelrystore_db; 


```  

2: Use database  

```SQL  

USE jewelrystore_db;  

```  

3: Create item table  

```SQL  

CREATE TABLE item(ItemID INT, Name VARCHAR(150), Cost INT, PRIMARY KEY(ItemID)); 

```  

4: Insert data to item table 

```SQL  

INSERT INTO item VALUES(1,'Engagement ring',2500),(2,'Silver brooch',400),(3,'Earrings',350),(4,'Luxury watch',1250),(5,'Golden bracelet',800), (6,'Gemstone',1500); 

```    

5: Create mg_orders table 

```SQL  

CREATE TABLE mg_orders(OrderID INT, ItemID INT, Quantity INT, Cost INT, OrderDate DATE, DeliveryDate DATE, OrderStatus VARCHAR(50), PRIMARY KEY(OrderID));  

``` 

6: Insert data to mg_orders table 

```SQL  

INSERT INTO mg_orders VALUES(1,1,50,122000,'2022-04-05','2022-05-25', 'Delivered'),(2,2,75,28000,'2022-03-08',NULL, 'In progress'), (3,3,80,25000,'2022-05-19','2022-06-08', 'Delivered'), (4,4,45,100000,'2022-01-10',NULL, 'In progress'),(5,5,70,56000,'2022-05-19',NULL, 'In progress'),(6,6,60,90000,'2022-06-10','2022-06-18', 'Delivered'); 

``` 

## The main objectives of this activity:     

* Working with MySQL String, Math, Date and Comparison functions. 

<br>    



## Exercise Instructions 

Please attempt the below tasks  

**Task 1**  

    Write a SQL SELECT query using appropriate MySQL string functions to list items, quantities and order status in the following format. 

    Item name–quantity–order status   

    Item name should be in lower case. Order status should be in upper case. 


    The expected output result should be like the following screenshot (if you have same data set populated in the orders table)
![Task 1 output](images/M3L1I10task1output.PNG)  


**Task 2**   

    Write a SQL SELECT query using an appropriate date function and a format string to find the name of the day in the week (weekday name) on which M & G’s orders are to be delivered.  

    The expected output result should be like the following screenshot (if you have same data set populated in the orders table) 
![Task 2 output](images/M3L1I10task2output.PNG)   

  
**Task 3**    

    Write a SQL SELECT query that calculates the order handling cost for each order, which is 5% of the order cost. Use an appropriate math function to round that value to 2 decimal places.  

    The expected output result should be like the following screenshot (if you have same data set populated in the orders table) 
![Task 3 output](images/M3L1I10task3output.PNG)  


**Task 4**  

    Considering the query you wrote in task 02, use an appropriate comparison function to filter out the records that do not have a NULL delivery date.  

    The expected output result should be like the following screenshot (if you have same data set populated in the orders table) 
![Task 4 output](images/M3L1I10task4output.PNG)  

  

