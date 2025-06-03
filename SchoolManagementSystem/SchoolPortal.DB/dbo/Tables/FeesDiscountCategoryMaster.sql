CREATE TABLE [dbo].[FeesDiscountCategoryMaster] (
    [Id]            UNIQUEIDENTIFIER NOT NULL,
    [Name]          VARCHAR (150)    NULL,
    [Description]   VARCHAR (250)    NULL,
    [CompanyId]     UNIQUEIDENTIFIER NOT NULL,
    [SchoolId]      UNIQUEIDENTIFIER NOT NULL,
    [Amount]        DECIMAL (18, 2)  NULL,
    [FeeCategoryId] UNIQUEIDENTIFIER NOT NULL,
    [IsPercentage]  BIT              NULL,
    [IsActive]      BIT              DEFAULT ((1)) NOT NULL,
    [IsDeleted]     BIT              DEFAULT ((0)) NOT NULL,
    [CreatedBy]     UNIQUEIDENTIFIER NULL,
    [CreatedDate]   DATETIME         DEFAULT (getdate()) NOT NULL,
    [ModifiedBy]    UNIQUEIDENTIFIER NULL,
    [ModifiedDate]  DATETIME         NULL,
    [Status]        VARCHAR (10)     DEFAULT ('INC') NULL,
    [StatusMessage] NVARCHAR (255)   NULL,
    CONSTRAINT [PK_FeesDiscountCategoryMaster] PRIMARY KEY CLUSTERED ([Id] ASC)
);

