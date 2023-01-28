CREATE TABLE [dbo].[salaryTbl] (
    [SCode]      INT           IDENTITY (1, 1) NOT NULL,
    [Employee]   INT           NOT NULL,
    [Attendance] INT           NOT NULL,
    [period]     VARCHAR (100) NOT NULL,
    [Amount]     INT           NOT NULL,
    [PayDate]    DATE          NOT NULL,
    PRIMARY KEY CLUSTERED ([SCode] ASC),
    CONSTRAINT [Fk3] FOREIGN KEY ([Employee]) REFERENCES [dbo].[EmployeeTbl] ([Depid])
);

