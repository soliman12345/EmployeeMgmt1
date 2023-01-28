CREATE TABLE [dbo].[EmployeeTbl] (
    [Depid]    INT           IDENTITY (1, 1) NOT NULL,
    [DepName]  VARCHAR (100) NOT NULL,
    [EmpGen]   VARCHAR (100) NOT NULL,
    [EnpDep]   INT           NOT NULL,
    [EmpDOB]   DATE          NOT NULL,
    [EmpJDate] DATE          NOT NULL,
    [EmoSol]   INT           NOT NULL,
    PRIMARY KEY CLUSTERED ([Depid] ASC),
    CONSTRAINT [FK1] FOREIGN KEY ([Depid]) REFERENCES [dbo].[DepartmentTbl] ([Depid])
);

