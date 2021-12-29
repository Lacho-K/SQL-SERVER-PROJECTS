CREATE PROC AvgProblemCountInAPeriod @TargetDate DATE AS
BEGIN
	SELECT AVG(ProblemsCount) AS 'Average problems occurred' FROM TechProblems
	WHERE OccurrenceDate <= @TargetDate
END