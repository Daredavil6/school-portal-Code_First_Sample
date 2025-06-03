CREATE TABLE [dbo].[ItemMaster] (
    [Id]               UNIQUEIDENTIFIER NOT NULL,
    [ItemName]         VARCHAR (100)    NULL,
    [ItemDescription]  VARCHAR (250)    NULL,
    [ItemTypeMasterId] UNIQUEIDENTIFIER NOT NULL,
    [CompanyId]        UNIQUEIDENTIFIER NOT NULL,
    [SchoolId]         UNIQUEIDENTIFIER NOT NULL,
    [IsActive]         BIT              DEFAULT ((1)) NOT NULL,
    [IsDeleted]        BIT              DEFAULT ((0)) NOT NULL,
    [CreatedBy]        UNIQUEIDENTIFIER NULL,
    [CreatedDate]      DATETIME         DEFAULT (getdate()) NOT NULL,
    [ModifiedBy]       UNIQUEIDENTIFIER NULL,
    [ModifiedDate]     DATETIME         NULL,
    [Status]           VARCHAR (10)     DEFAULT ('INC') NULL,
    [StatusMessage]    NVARCHAR (255)   NULL,
    CONSTRAINT [PK_ItemMaster] PRIMARY KEY CLUSTERED ([Id] ASC)
);

