CREATE TABLE [dbo].[Privileges] (
    [Id]                UNIQUEIDENTIFIER NOT NULL,
    [PrivilegeName]     NVARCHAR (100)   NULL,
    [PrivilegeParentId] INT              NULL,
    [IsActive]          BIT              NOT NULL,
    [IsDeleted]         BIT              NOT NULL,
    [CreatedBy]         UNIQUEIDENTIFIER NULL,
    [CreatedDate]       DATETIME         DEFAULT (getdate()) NOT NULL,
    [ModifiedBy]        UNIQUEIDENTIFIER NULL,
    [ModifiedDate]      DATETIME         NULL,
    [Status]            VARCHAR (10)     DEFAULT ('INC') NULL,
    [StatusMessage]     NVARCHAR (255)   NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

