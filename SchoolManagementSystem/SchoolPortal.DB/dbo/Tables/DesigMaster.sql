CREATE TABLE [dbo].[DesigMaster] (
    [Id]            UNIQUEIDENTIFIER NOT NULL,
    [Code]          VARCHAR (10)     NULL,
    [Name]          VARCHAR (150)    NULL,
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
    CONSTRAINT [PK_DesigMaster] PRIMARY KEY CLUSTERED ([Id] ASC)
);

