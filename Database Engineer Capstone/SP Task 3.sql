CREATE PROCEDURE CancelOrder(in OrderID INT)
DELETE FROM orders;

