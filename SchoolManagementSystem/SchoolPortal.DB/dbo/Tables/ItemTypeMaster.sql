CREATE TABLE [dbo].[ItemTypeMaster] (
    [Id]                        UNIQUEIDENTIFIER NOT NULL,
    [ItemTypeMasterName]        VARCHAR (100)    NULL,
    [ItemTypeMasterDescription] VARCHAR (250)    NULL,
    [CompanyId]                 UNIQUEIDENTIFIER NOT NULL,
    [SchoolId]                  UNIQUEIDENTIFIER NOT NULL,
    [IsActive]                  BIT              DEFAULT ((1)) NOT NULL,
    [IsDeleted]                 BIT              DEFAULT ((0)) NOT NULL,
    [CreatedBy]                 UNIQUEIDENTIFIER NULL,
    [CreatedDate]               DATETIME         DEFAULT (getdate()) NOT NULL,
    [ModifiedBy]                UNIQUEIDENTIFIER NULL,
    [ModifiedDate]              DATETIME         NULL,
    [Status]                    VARCHAR (10)     DEFAULT ('INC') NULL,
    [StatusMessage]             NVARCHAR (255)   NULL,
    CONSTRAINT [PK_ItemTypeMaster] PRIMARY KEY CLUSTERED ([Id] ASC)
);

