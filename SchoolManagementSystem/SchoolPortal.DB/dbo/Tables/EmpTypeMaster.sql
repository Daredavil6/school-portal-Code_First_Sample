CREATE TABLE [dbo].[EmpTypeMaster] (
    [Id]            UNIQUEIDENTIFIER NOT NULL,
    [Name]          VARCHAR (50)     NULL,
    [Description]   VARCHAR (150)    NULL,
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
    CONSTRAINT [PK_EmpTypeMaster] PRIMARY KEY CLUSTERED ([Id] ASC)
);

