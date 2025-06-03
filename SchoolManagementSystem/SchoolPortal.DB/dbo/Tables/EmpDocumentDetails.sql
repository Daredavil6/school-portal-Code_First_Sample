CREATE TABLE [dbo].[EmpDocumentDetails] (
    [Id]            UNIQUEIDENTIFIER NOT NULL,
    [EmployeeId]    UNIQUEIDENTIFIER NOT NULL,
    [EmployeeName]  VARCHAR (50)     NULL,
    [Description]   VARCHAR (250)    NULL,
    [FileName]      VARCHAR (100)    NULL,
    [CompanyId]     UNIQUEIDENTIFIER NOT NULL,
    [SchoolId]      UNIQUEIDENTIFIER NOT NULL,
    [IsActive]      BIT              NOT NULL,
    [IsDeleted]     BIT              NOT NULL,
    [CreatedBy]     UNIQUEIDENTIFIER NULL,
    [CreatedDate]   DATETIME         NOT NULL,
    [ModifiedBy]    UNIQUEIDENTIFIER NULL,
    [ModifiedDate]  DATETIME         NULL,
    [Status]        VARCHAR (10)     DEFAULT ('INC') NULL,
    [StatusMessage] NVARCHAR (255)   NULL,
    CONSTRAINT [PK_EmpDocumentDetails] PRIMARY KEY CLUSTERED ([Id] ASC)
);

