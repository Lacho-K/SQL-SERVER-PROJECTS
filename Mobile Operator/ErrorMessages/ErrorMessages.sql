EXEC sp_addmessage 
		@msgnum = 50001, 
		@severity = 5, 
		@msgtext = 'Mobile plans have to be in range(1,3)';

EXEC sp_addmessage 
		@msgnum = 50002, 
		@severity = 5, 
		@msgtext = 'Values of: @MonthsOfContract, @OwedMoney and @ProblemCount cannot be less than zero!';

EXEC sp_addmessage 
		@msgnum = 50003, 
		@severity = 5, 
		@msgtext = '@DateJoinded cannot be after @LastSubscriptionDate';

EXEC sp_addmessage 
		@msgnum = 50004, 
		@severity = 5, 
		@msgtext = '@DateJoinded cannot be after @DateQuit';

EXEC sp_addmessage 
		@msgnum = 50005, 
		@severity = 5, 
		@msgtext = '@LastSubscriptionDate cannot be after @DateQuit';

EXEC sp_addmessage 
		@msgnum = 50006, 
		@severity = 5, 
		@msgtext = 'Id not found!';

EXEC sp_addmessage 
		@msgnum = 50007, 
		@severity = 5, 
		@msgtext = 'Value of: @Cost cannot be less than zero!';

EXEC sp_addmessage 
		@msgnum = 50008, 
		@severity = 5, 
		@msgtext = '@Occurrence date not valid!';

EXEC sp_addmessage 
		@msgnum = 50009, 
		@severity = 5, 
		@msgtext = '@ProblemsCount cannot be less than one!';


