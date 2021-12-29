CREATE PROC ClientsQuitInAPeriod @TargetDate DATE AS
BEGIN
	SELECT * FROM Customers
	WHERE DateQuit >= @TargetDate
END