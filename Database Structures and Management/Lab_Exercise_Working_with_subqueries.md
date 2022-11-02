# Working with subqueries 

 

## Lab Instructions 

Little Lemon is a family-owned Mediterranean restaurant, focused on traditional recipes served with a modern twist. In this lab, you must complete the following tasks to make it easier for Little Lemon restaurant to print relevant booking and menu details with the help of subqueries. 

 

<br> 

The MenuItems table contains information about menu items as shown in the following screenshot.  

 ![MenuItems table](images/lab_menuitems.PNG) 

<br> 

The Menus table contains information about the menus as shown in the following screenshot.  

 ![Menus table](images/lab_menus.PNG) 

<br> 

The Bookings table contains information about guest bookings as shown in the following screenshot.  

 ![Bookings table](images/lab_bookings.PNG) 

<br> 

The TableOrders table contains information about orders as shown in the following screenshot.  

 ![TableOrders table](images/lab_tableorders.PNG) 

 
<br><br>  

**Note:** Before you begin, make sure you know how to access [MySQL environment](https://www.coursera.org/learn/database-structures-and-management-with-mysql/supplement/BSZK6/how-to-access-mysql-environment).

###  Prerequisites  

To complete this lab, you need to have created the Little Lemon database in MySQL. You must also have populated and created the tables with relevant data inside the Little Lemon database.  

If you have not created these tables in the database, the code to create the database and the tables are as follows:  

1: Create database 

```SQL 

CREATE DATABASE littlelemon_db; 

``` 

2: Use database 

```SQL 

USE littlelemon_db; 

``` 

3: Create the MenuItems table 

```SQL 

CREATE TABLE MenuItems ( 

  ItemID INT, 

  Name VARCHAR(200), 

  Type VARCHAR(100), 

  Price INT, 

  PRIMARY KEY (ItemID) 

);  

``` 

4: Create the Menus table 

```SQL 

CREATE TABLE Menus ( 

  MenuID INT, 

  ItemID INT, 

  Cuisine VARCHAR(100), 

  PRIMARY KEY (MenuID,ItemID) 

); 

``` 

 

5: Create the Bookings table 

```SQL 

CREATE TABLE Bookings ( 

  BookingID INT, 

  TableNo INT, 

  GuestFirstName VARCHAR(100), 

  GuestLastName VARCHAR(100), 

  BookingSlot TIME, 

  EmployeeID INT, 

  PRIMARY KEY (BookingID) 

);  

``` 

6: Create the TableOrders table 

```SQL 

CREATE TABLE TableOrders ( 

  OrderID INT, 

  TableNo INT, 

  MenuID INT, 

  BookingID INT, 

  BillAmount INT, 

  Quantity INT, 

  PRIMARY KEY (OrderID,TableNo) 

);  

``` 

 

7: Insert data 

```SQL 

INSERT INTO MenuItems VALUES(1,'Olives','Starters',5), (2,'Flatbread','Starters', 5)(3, 'Minestrone', 'Starters', 8), (4, 'Tomato bread','Starters', 8), (5, 'Falafel', 'Starters', 7), (6, 'Hummus', 'Starters', 5), (7, 'Greek salad', 'Main Courses', 15), (8, 'Bean soup', 'Main Courses', 12), (9, 'Pizza', 'Main Courses', 15), (10,'Greek yoghurt','Desserts', 7), (11, 'Ice cream', 'Desserts', 6),(12, 'Cheesecake', 'Desserts', 4), (13, 'Athens White wine', 'Drinks', 25), (14, 'Corfu Red Wine', 'Drinks', 30), (15, 'Turkish Coffee', 'Drinks', 10), (16, 'Turkish Coffee', 'Drinks', 10), (17, 'Kabasa', 'Main Courses', 17); 

```   

```SQL 

INSERT INTO Menus VALUES(1, 1, 'Greek'), (1, 7, 'Greek'), (1, 10, 'Greek'), (1, 13, 'Greek'), (2, 3, 'Italian'), (2, 9, 'Italian'), (2, 12, 'Italian'), (2, 15, 'Italian'), (3, 5, 'Turkish'), (3, 17, 'Turkish'), (3, 11, 'Turkish'), (3, 16, 'Turkish'); 

``` 

```SQL 

 

INSERT INTO Bookings VALUES(1,12,'Anna','Iversen','19:00:00',1),  

(2, 12, 'Joakim', 'Iversen', '19:00:00', 1), (3, 19, 'Vanessa', 'McCarthy', '15:00:00', 3), 

(4, 15, 'Marcos', 'Romero', '17:30:00', 4), (5, 5, 'Hiroki', 'Yamane', '18:30:00', 2), 

(6, 8, 'Diana', 'Pinto', '20:00:00', 5); 

``` 

```SQL 

INSERT INTO TableOrders VALUES(1, 12, 1, 1, 2, 86), (2, 19, 2, 2, 1, 37), (3, 15, 2, 3, 1, 37), (4, 5, 3, 4, 1, 40), (5, 8, 1, 5, 1, 43); 

``` 

 

## There are two main objectives in this activity:     

 
1. Working with single row, multiple row and correlated subqueries.
2. Using the comparison operators and the ALL and NOT EXISTS operators with subqueries.

<br>   

 

## Exercise Instructions 

Please attempt the following tasks. 

 

**Task 1:** Write a SQL SELECT query to find all bookings that are due after the booking of the guest ‘Vanessa McCarthy’. 

The expected output result should be the same as the following screenshot (assuming that you have created and populated the orders tables correctly).  ![Task 1 output](images/task1output.PNG) 
  
 

**Task 2:** Write a SQL SELECT query to find the menu items that are more expensive than all the 'Starters' and 'Desserts' menu item types. 

The expected output result should be the same as the following screenshot (assuming that you have created and populated the orders tables correctly).<br> ![Task 2 output](images/task2output.PNG) 

 

**Task 3:**  Write a SQL SELECT query to find the menu items that costs the same as the starter menu items that are Italian cuisine. 

The expected output result should be the same as the following screenshot (assuming that you have created and populated the orders tables correctly). <br> ![Task 3 output](images/task3output.PNG) 

 

**Task 4:** Write a SQL SELECT query to find the menu items that were not ordered by the guests who placed bookings. 

The expected output result should be the same as the following screenshot (assuming that you have created and populated the orders tables correctly). <br> ![Task 4 output](images/task4output.PNG) 

 

