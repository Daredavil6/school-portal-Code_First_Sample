CREATE TABLE [dbo].[EmpCatLeaveDetailsHistory] (
    [Id]            UNIQUEIDENTIFIER NOT NULL,
    [CategoryId]    UNIQUEIDENTIFIER NOT NULL,
    [LeaveTypeId]   UNIQUEIDENTIFIER NOT NULL,
    [TotalLeaves]   DECIMAL (18, 1)  NULL,
    [SessionId]     UNIQUEIDENTIFIER NOT NULL,
    [SchoolId]      UNIQUEIDENTIFIER NOT NULL,
    [CompanyId]     UNIQUEIDENTIFIER NOT NULL,
    [CreatedBy]     UNIQUEIDENTIFIER NULL,
    [CreatedDate]   DATETIME         NOT NULL,
    [ModifiedBy]    UNIQUEIDENTIFIER NULL,
    [ModifiedDate]  DATETIME         NULL,
    [Status]        VARCHAR (10)     DEFAULT ('INC') NULL,
    [StatusMessage] NVARCHAR (255)   NULL,
    CONSTRAINT [PK_EmpCatLeaveDetailsHistory] PRIMARY KEY CLUSTERED ([Id] ASC)
);

