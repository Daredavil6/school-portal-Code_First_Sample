CREATE TABLE [dbo].[EmployeeCatLeaveDetails] (
    [Id]            UNIQUEIDENTIFIER NOT NULL,
    [CategoryId]    UNIQUEIDENTIFIER NOT NULL,
    [TypeId]        UNIQUEIDENTIFIER NOT NULL,
    [TotalLeaves]   INT              NULL,
    [SessionId]     UNIQUEIDENTIFIER NOT NULL,
    [SchoolId]      UNIQUEIDENTIFIER NOT NULL,
    [CompanyId]     UNIQUEIDENTIFIER NOT NULL,
    [IsActive]      BIT              NOT NULL,
    [IsDeleted]     BIT              NOT NULL,
    [CreatedBy]     UNIQUEIDENTIFIER NULL,
    [CreatedDate]   DATETIME         NOT NULL,
    [ModifiedBy]    UNIQUEIDENTIFIER NULL,
    [ModifiedDate]  DATETIME         NULL,
    [Status]        VARCHAR (10)     DEFAULT ('INC') NULL,
    [StatusMessage] NVARCHAR (255)   NULL,
    CONSTRAINT [PK_EmpCatLeaveDetails] PRIMARY KEY CLUSTERED ([Id] ASC)
);

