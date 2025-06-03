CREATE TABLE [dbo].[EmpLeaveDetails] (
    [Id]                  UNIQUEIDENTIFIER NOT NULL,
    [EmployeeId]          UNIQUEIDENTIFIER NOT NULL,
    [CategoryId]          UNIQUEIDENTIFIER NOT NULL,
    [LeaveTypeId]         UNIQUEIDENTIFIER NOT NULL,
    [TotalLeaves]         DECIMAL (18, 1)  NULL,
    [PreviousYearBalance] DECIMAL (18, 1)  NULL,
    [CurrentBalance]      DECIMAL (18, 1)  NULL,
    [SessionId]           UNIQUEIDENTIFIER NOT NULL,
    [IsActive]            BIT              NOT NULL,
    [IsDeleted]           BIT              NOT NULL,
    [CompanyId]           UNIQUEIDENTIFIER NOT NULL,
    [SchoolId]            UNIQUEIDENTIFIER NOT NULL,
    [CreatedBy]           UNIQUEIDENTIFIER NULL,
    [CreatedDate]         DATETIME         NOT NULL,
    [ModifiedBy]          UNIQUEIDENTIFIER NULL,
    [ModifiedDate]        DATETIME         NULL,
    [Status]              VARCHAR (10)     DEFAULT ('INC') NULL,
    [StatusMessage]       NVARCHAR (255)   NULL,
    CONSTRAINT [PK_EmpLeaveDetails] PRIMARY KEY CLUSTERED ([Id] ASC)
);

