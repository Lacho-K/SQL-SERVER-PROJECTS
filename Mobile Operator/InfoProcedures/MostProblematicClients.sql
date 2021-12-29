CREATE PROC MostProblematicClients AS
BEGIN
	SELECT TOP 3 ID, ProblemsCount FROM Customers AS c
	JOIN TechProblems AS tp ON tp.CustID = c.ID
	ORDER BY tp.ProblemsCount DESC
END