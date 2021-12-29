CREATE PROC TopMobilePlan AS
BEGIN
	SELECT MobilePlanType, COUNT(MobilePlanType) AS 'Clients Count' FROM Customers
	GROUP BY MobilePlanType
END