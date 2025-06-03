CREATE TABLE [dbo].[InventoryMaster] (
    [Id]             UNIQUEIDENTIFIER NOT NULL,
    [Name]           VARCHAR (100)    NULL,
    [ItemId]         UNIQUEIDENTIFIER NOT NULL,
    [ItemLocationId] UNIQUEIDENTIFIER NOT NULL,
    [Quantity]       INT              NULL,
    [CostPerItem]    DECIMAL (18, 2)  NULL,
    [CompanyId]      UNIQUEIDENTIFIER NOT NULL,
    [SchoolId]       UNIQUEIDENTIFIER NOT NULL,
    [IsActive]       BIT              DEFAULT ((1)) NOT NULL,
    [IsDeleted]      BIT              DEFAULT ((0)) NOT NULL,
    [CreatedBy]      UNIQUEIDENTIFIER NULL,
    [CreatedDate]    DATETIME         DEFAULT (getdate()) NOT NULL,
    [ModifiedBy]     UNIQUEIDENTIFIER NULL,
    [ModifiedDate]   DATETIME         NULL,
    [Status]         VARCHAR (10)     DEFAULT ('INC') NULL,
    [StatusMessage]  NVARCHAR (255)   NULL,
    CONSTRAINT [PK_InventoryMaster] PRIMARY KEY CLUSTERED ([Id] ASC)
);

