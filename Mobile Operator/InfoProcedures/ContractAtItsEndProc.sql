CREATE PROC ContractRunningOut AS
BEGIN
	SELECT * FROM Customers
	WHERE MonthsOfContract <= 3
END