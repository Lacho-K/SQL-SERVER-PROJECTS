CREATE PROC NewClientsForPeriod @TargetDate DATE AS
BEGIN
	SELECT * FROM Customers
	WHERE DateJoinded >= @TargetDate
END