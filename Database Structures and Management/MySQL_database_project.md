
# Lab Instructions: MySQL database project 

## Scenario 

Based in Chicago, Illinois, Little Lemon is a family-owned Mediterranean restaurant, focused on traditional recipes served with a modern twist. The chefs draw inspiration from Italian, Greek, and Turkish culture and have a menu of 12–15 items that they rotate seasonally. The restaurant has a rustic and relaxed atmosphere with moderate prices, making it a popular place for a meal any time of the day.  

Little Lemon is owned by two Italian brothers, Mario and Adrian, who moved to the United States to pursue their shared dream of owning a restaurant. To craft the menu, Mario relies on family recipes and his experience as a chef in Italy. Adrian does all the marketing for the restaurant and led the effort to expand the menu beyond classic Italian to incorporate additional cuisines from the Mediterranean region.  
 
Note: Before you begin, make sure you know how to access [MySQL environment](https://www.coursera.org/learn/database-structures-and-management-with-mysql/supplement/BSZK6/how-to-access-mysql-environment). 

### Prerequisites   

In order to complete this lab, you must first have created the Little Lemon database in MySQL. You must also have the Customers, Bookings and Courses tables created and populated with relevant data as shown below.   

1: The code to create the database is as follows:

```SQL  
CREATE DATABASE Little_Lemon;  
```  

2: The code to use the database is as follows:  
 

```SQL  
USE Little_Lemon;  
```  

3: The code to create the Customers table is as follows:  

```SQL  
CREATE TABLE Customers(CustomerID INT NOT NULL PRIMARY KEY, FullName VARCHAR(100) NOT NULL,    PhoneNumber INT NOT NULL UNIQUE);  
```  

4: The code to create the Customers table is as follows

```SQL  
INSERT INTO Customers(CustomerID, FullName, PhoneNumber) VALUES 
    (1, "Vanessa McCarthy", 0757536378), 
    (2, "Marcos Romero", 0757536379), 
    (3, "Hiroki Yamane", 0757536376), 
    (4, "Anna Iversen", 0757536375),
    (5, "Diana Pinto", 0757536374),
    (6, "Altay Ayhan", 0757636378), 
    (7, "Jane Murphy", 0753536379), 
    (8, "Laurina Delgado", 0754536376), 
    (9, "Mike Edwards", 0757236375),
    (10, "Karl Pederson", 0757936374);    
```     

The Customers table is shown in the following screenshot:

![Customers table](images/customers.PNG) 

5: The code to create the Bookings table is as follows:  

```SQL   
CREATE TABLE Bookings (   
BookingID INT,   
BookingDate DATE,   
TableNumber INT,    
NumberOfGuests INT,   
CustomerID INT    
);  
```  

6: The code to populate the Bookings table with data is as follows: 

```SQL   
INSERT INTO Bookings (BookingID, BookingDate, TableNumber, NumberOfGuests, CustomerID) VALUES
(10, '2021-11-10', 7, 5, 1), 
(11, '2021-11-10', 5, 2, 2), 
(12, '2021-11-10', 3, 2, 4),
(13, '2021-11-11', 2, 5, 5), 
(14, '2021-11-11', 5, 2, 6), 
(15, '2021-11-11', 3, 2, 7),
(16, '2021-11-11', 3, 5, 1), 
(17, '2021-11-12', 5, 2, 2), 
(18, '2021-11-12', 3, 2, 4),
(19, '2021-11-13', 7, 5, 6), 
(20, '2021-11-14', 5, 2, 3), 
(21, '2021-11-14', 3, 2, 4);      
```  

The Bookings table is shown in the following screenshot:

![Bookings table](images/bookings.PNG) 

7: The code to create the restaurant Courses table is as follows:

```SQL   
CREATE TABLE Courses (CourseName VARCHAR(255) PRIMARY KEY, Cost Decimal(4,2)); 
```  

8: The code to populate the restaurant's Courses table with data is as follows:  

```SQL
Insert into Courses (CourseName, Cost) VALUES ("Greek salad", 15.50), ("Bean soup", 12.25), ("Pizza", 15.00), ("Carbonara", 12.50), ("Kabasa", 17.00), ("Shwarma", 11.30); 
```  

The Courses table is shown in the following screenshot:

![Courses table](images/Courses.PNG) 


## This activity has two main objectives:    

1. Provide a recap of all topics introduced in this course.

2. Provide experience with developing core database queries.   

## Task Instructions  

Please attempt the following tasks. 

Note that there might be several ways to complete the same task. However, a suitable solution for each task is offered in the Solutions section. 

**Task 1** : Filter data using the WHERE clause and logical operators.

    Create SQL statement to print all records from Bookings table for the following bookings dates using the BETWEEN operator: 2021-11-11, 2021-11-12 and 2021-11-13. The expected output result should be the same as shown in the following screenshot.

![Task 1 output](images/task1output.PNG)

**Task 2** : Create a JOIN query.

    Create a JOIN SQL statement on the Customers and Bookings tables. The statement must print the customers full names and related bookings IDs from the date 2021-11-11. The expected output result should be the same as that shown in the following screenshot:


![Task 2 output](images/task2output.PNG) 

**Task 3** : Create a GROUP BY query.

    Create a SQl statement to print the bookings dates from Bookings table. The statement must show the total number of bookings placed on each of the printed dates using the GROUP BY BookingDate. The expected output result should be the same as that shown in the following screenshot:


![Task 3 output](images/task3output.PNG) 

**Task 4** : Create a REPLACE statement.

    Create a SQL REPLACE statement that updates the cost of the Kabsa course from $17.00 to $20.00. 
    The expected output result should be the same as that shown in the following screenshot:


![Task 4 output](images/task4output.PNG) 


**Task 5** : Create constraints 

    Create a new table called "DeliveryAddress" in the Little Lemon database with the following columns and constraints: 
 
    ID: INT PRIMARY KEY

    Address: VARCHAR(255) NOT NULL

    Type: NOT NULL DEFAULT "Private" 

    CustomerID: INT NOT NULL FOREIGN KEY referencing CustomerID in the Customers table 

    The expected table structure should be the same as that shown in the following screenshot:

![Task 5 output](images/task5output.PNG) 


**Task 6** : Alter table structure 

    Create a SQL statement that adds a new column called 'Ingredients' to the Courses table. 

    Ingredients: VARCHAR(255) 

    Once the column has been added, the table's new structure should be the same as shown in the following screenshot:

![Task 6 output](images/task6output.PNG) 


**Task 7** : Alter table structure 

    Create a SQL statement with a subquery that prints the full names of all customers who made bookings in the restaurant on the following date: 2021-11-11. 

    The expected output result of your query should be similar to the output in the following screenshot:

![Task 7 output](images/task7output.PNG) 

**Task 8** : Create a virtual table 

    Create the "BookingsView" virtual table to print all bookings IDs, bookings dates and the number of guests for bookings made in the restaurant before 2021-11-13 and where number of guests is larger than 3. 

    Select all data from the BookingsView virtual table. The expected output result should be the same as shown in the following screenshot.

![Task 8 output](images/task8output.PNG) 


**Task 9** : Create a stored procedure 

    Create a stored procedure called 'GetBookingsData'. The procedure must contain one date parameter called "InputDate". This parameter retrieves all data from the Bookings table based on the user input of the date.  
 
    After executing the query, call the "GetBookingsData" with '2021-11-13' as the input date passed to the stored procedure to show all bookings made on that date. The expected output of the CALL statement should be the same as the following screenshot:

![Task 9 output](images/task9output.PNG) 


**Task 10** : Use the String function

    Create a SQL SELECT query using appropriate MySQL string function to list "Booking Details" including booking ID, booking date and number of guests. The data must be listed in the same format as the following example: 


    ID: 10, Date: 2021-11-10, Number of guests: 5


    The expected output result should be similar to the following screenshot (notice the table title "Booking Details")

![Task 10 output](images/task10output.PNG) 


