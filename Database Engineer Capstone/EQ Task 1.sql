CREATE PROCEDURE AddBooking (IN BookingID INT, IN CustomerID INT, IN TableNumber INT, IN BookingDate DATE)
BEGIN
INSERT INTO bookings (booking_id, customer_id, table_number, date) VALUES (BookingID, CustomerID, TableNumber, BookingDate); 
END
