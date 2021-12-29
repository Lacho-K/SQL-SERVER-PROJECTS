CREATE PROC IncomeForAPeriod @TargetDate DATE AS
BEGIN
	SELECT SUM(OwedMoney) AS 'Income' FROM Customers
	WHERE LastSubscriptionDate >= @TargetDate
END