CREATE TABLE [dbo].[RoleMaster] (
    [Id]                    UNIQUEIDENTIFIER NOT NULL,
    [RoleMasterName]        VARCHAR (100)    NOT NULL,
    [RoleMasterDescription] VARCHAR (250)    NULL,
    [CompanyId]             UNIQUEIDENTIFIER NOT NULL,
    [SchoolId]              UNIQUEIDENTIFIER NOT NULL,
    [IsActive]              BIT              NOT NULL,
    [IsDeleted]             BIT              NOT NULL,
    [CreatedBy]             UNIQUEIDENTIFIER NULL,
    [CreatedDate]           DATETIME         NOT NULL,
    [ModifiedBy]            UNIQUEIDENTIFIER NULL,
    [ModifiedDate]          DATETIME         NULL,
    [Status]                VARCHAR (10)     DEFAULT ('INC') NULL,
    [StatusMessage]         NVARCHAR (255)   NULL,
    CONSTRAINT [PK_RoleMaster] PRIMARY KEY CLUSTERED ([Id] ASC)
);

