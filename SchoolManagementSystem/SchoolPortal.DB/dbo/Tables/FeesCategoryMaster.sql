CREATE TABLE [dbo].[FeesCategoryMaster] (
    [Id]                  UNIQUEIDENTIFIER NOT NULL,
    [CategoryName]        VARCHAR (50)     NULL,
    [CategoryDescription] VARCHAR (150)    NULL,
    [SchoolId]            UNIQUEIDENTIFIER NOT NULL,
    [CompanyId]           UNIQUEIDENTIFIER NOT NULL,
    [IsActive]            BIT              DEFAULT ((1)) NOT NULL,
    [IsDeleted]           BIT              DEFAULT ((0)) NOT NULL,
    [CreatedBy]           UNIQUEIDENTIFIER NULL,
    [CreatedDate]         DATETIME         DEFAULT (getdate()) NOT NULL,
    [ModifiedBy]          UNIQUEIDENTIFIER NULL,
    [ModifiedDate]        DATETIME         NULL,
    [Status]              VARCHAR (10)     DEFAULT ('INC') NULL,
    [StatusMessage]       NVARCHAR (255)   NULL,
    CONSTRAINT [PK_FeesCategoryMaster] PRIMARY KEY CLUSTERED ([Id] ASC)
);

