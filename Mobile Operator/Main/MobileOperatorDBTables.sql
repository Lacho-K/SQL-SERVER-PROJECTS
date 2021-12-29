-- Creating Tables

CREATE TABLE Customers(
	ID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	MonthsOfContract INT NOT NULL,
	DateJoinded DATE NOT NULL,
	LastSubscriptionDate DATE,
	MobilePlanType INT NOT NULL,
	DateQuit DATE,
	OwedMoney MONEY NOT NULL,
	ProblemCount INT
)

CREATE TABLE TechProblems(
	CustID INT,
	OccurrenceDate DATE,
	ProblemSolutionCost MONEY,
	ProblemsCount INT
	FOREIGN KEY(CustID) REFERENCES Customers(ID)
)

-- Adding Customers To Table

EXEC dbo.AddCustomer 9, '2022-05-05', NULL, 2, '2022-09-05', 97.00, 0

EXEC dbo.AddCustomer 5, '2021-10-10', '2022-02-05', 1, '2022-05-09', 31.25,3

EXEC dbo.AddCustomer 10,'2020-12-30', NULL, 1, NULL, 25.67, 0

EXEC dbo.AddCustomer 6, '2022-06-21', '2022-07-21', 2, NULL, 132.43, 2

EXEC dbo.AddCustomer 12, '2020-05-20', NULL, 2, NULL, 123.34, 0

EXEC dbo.AddCustomer 4, '2021-03-21', '2022-01-10', 3, '2022-02-10', 54.32, 5  

EXEC dbo.AddCustomer 2, '2022-02-05', NULL, 1, NULL, 12.23, 0

EXEC dbo.AddCustomer 15, '2021-12-29', '2022-02-23', 2, NULL, 178.98, 1

EXEC dbo.AddCustomer 9, '2020-09-05', NULL, 2, '2021-10-13', 123.54, 3

EXEC dbo.AddCustomer 4, '2022-02-10', '2022-02-10', 1, NULL, 45.89, 1

EXEC dbo.AddCustomer 2, '2021-02-05', NULL, 2, NULL, 23.45, 0

EXEC dbo.AddCustomer 12, '2022-06-06', '2022-07-06', 1, '2023-07-06', 32.40, 3

EXEC dbo.AddCustomer 3, '2020-08-10', NULL, 3, NULL, 23.65, 2

EXEC dbo.AddCustomer 5, '2021-01-09', '2022-02-21', 2, '2022-03-20', 67.87, 5

EXEC dbo.AddCustomer 7, '2022-01-04', NULL, 1, NULL, 92.97, 0

-- Adding Tech Problems Info To Table

SELECT * FROM TechProblems

SELECT * FROM Customers

EXEC dbo.AddTechProblem 10, '2023-05-09', 34.21, 2

EXEC dbo.AddTechProblem 5, '2022-06-07', 12.34, 1

EXEC dbo.AddTechProblem 3, '2021-12-31', 24.43, 1

EXEC dbo.AddTechProblem 2, '2022-04-03', 0.00, 1

EXEC dbo.AddTechProblem 10, '2022-06-10', 100.43, 5

EXEC dbo.AddTechProblem 11, '2022-08-10', 23.43, 3

EXEC dbo.AddTechProblem 12, '2021-11-01', 10.65, 1

EXEC dbo.AddTechProblem 13, '2021-02-04', 54.23, 4

EXEC dbo.AddTechProblem 14, '2022-07-09', 5.43, 1

EXEC dbo.AddTechProblem 14, '2023-02-23', 12.67, 2 

-- Info Procedures

EXEC dbo.CountActiveClients

EXEC dbo.NewClientsForPeriod'2022-05-01'

EXEC dbo.ClientsQuitInAPeriod '2022-02-03'

EXEC dbo.ContractRunningOut

EXEC dbo.TopMobilePlan

EXEC dbo.AvgProblemCountInAPeriod '2021-06-09'

EXEC dbo.MostProblematicClients

EXEC dbo.IncomeForAPeriod '2022-07-03'

EXEC dbo.ExpenseForAPeriod '2022-04-01'

