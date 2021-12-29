CREATE PROC AddTechProblem @CustId INT, @OccurrenceDate DATE, @Cost MONEY, @ProblemsCount INT AS
BEGIN
	IF NOT EXISTS(SELECT * FROM Customers WHERE ID = @CustId)
		BEGIN
			RAISERROR(50006,5,1)
			RETURN
		END
	ELSE
		BEGIN
			DECLARE @DateJoined DATE = (SELECT DateJoinded FROM Customers WHERE @CustId = ID)
			DECLARE @DateQuit DATE = (SELECT DateQuit FROM Customers WHERE @CustId = ID)
			IF(@OccurrenceDate NOT BETWEEN @DateJoined AND @DateQuit)
				BEGIN
					RAISERROR(50008,5,1)
					RETURN
				END
		END
	IF @Cost < 0
		BEGIN
			RAISERROR(50007,5,1)
			RETURN
		END

	IF @ProblemsCount < 1
		BEGIN
			RAISERROR(50009,5,1)
			RETURN
		END


	INSERT INTO TechProblems (CustID, OccurrenceDate, ProblemSolutionCost, ProblemsCount)
	VALUES (@CustId, @OccurrenceDate, @Cost, @ProblemsCount)

END