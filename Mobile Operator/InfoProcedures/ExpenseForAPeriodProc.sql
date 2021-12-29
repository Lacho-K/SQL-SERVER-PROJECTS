CREATE PROC ExpenseForAPeriod @TargetDate DATE AS 
BEGIN
	SELECT SUM(ProblemSolutionCost) AS 'Expense' FROM TechProblems
	WHERE OccurrenceDate >= @TargetDate
END