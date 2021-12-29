CREATE PROC CountActiveClients AS

BEGIN 

	SELECT * FROM Customers
	WHERE DateQuit IS NULL

END