CREATE PROC AddCustomer @MonthsOfContract INT, @DateJoinded DATE, @LastSubscriptionDate DATE, @MobilePlanType INT, @DateQuit DATE, @OwedMoney MONEY, @ProblemCount INT 
AS 
BEGIN

	IF @LastSubscriptionDate IS NULL
		BEGIN
			SET 
			@LastSubscriptionDate = @DateJoinded
		END

	IF @MobilePlanType != 1 AND @MobilePlanType != 2 AND @MobilePlanType != 3
		BEGIN
			RAISERROR(50001,5,1)
			RETURN
		END
		
	IF @MonthsOfContract < 0 OR @OwedMoney < 0 OR @ProblemCount < 0
		BEGIN
			RAISERROR(50002,5,1)
			RETURN 
		END

	IF @DateJoinded > @LastSubscriptionDate
		BEGIN
			RAISERROR(50003,5,1)
			RETURN
		END

	IF @DateJoinded > @DateQuit
		BEGIN
			RAISERROR(50004,5,1)
			RETURN
		END
	
	IF @DateQuit < @LastSubscriptionDate
		BEGIN
			RAISERROR(50005,5,1)
			RETURN
		END

	INSERT INTO Customers(MonthsOfContract, DateJoinded, LastSubscriptionDate, MobilePlanType, DateQuit, OwedMoney)
	VALUES (@MonthsOfContract, @DateJoinded, @LastSubscriptionDate, @MobilePlanType, @DateQuit, @OwedMoney)

END