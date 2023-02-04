CREATE DEFINER=`root`@`localhost` PROCEDURE `CancelBooking`(IN BookingID INT)
BEGIN
DELETE FROM booking WHERE booking_id = BookingID;
END