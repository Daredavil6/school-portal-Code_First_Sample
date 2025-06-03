CREATE TABLE [dbo].[BookCategoryMaster] (
    [Id]            UNIQUEIDENTIFIER NOT NULL,
    [Name]          VARCHAR (50)     NULL,
    [Description]   VARCHAR (150)    NULL,
    [IsActive]      BIT              DEFAULT ((1)) NOT NULL,
    [IsDeleted]     BIT              DEFAULT ((0)) NOT NULL,
    [CompanyId]     UNIQUEIDENTIFIER NOT NULL,
    [SchoolId]      UNIQUEIDENTIFIER NOT NULL,
    [CreatedBy]     UNIQUEIDENTIFIER NULL,
    [CreatedDate]   DATE             NOT NULL,
    [ModifiedBy]    UNIQUEIDENTIFIER NULL,
    [ModifiedDate]  DATETIME         NULL,
    [Status]        VARCHAR (10)     DEFAULT ('INC') NULL,
    [StatusMessage] NVARCHAR (255)   NULL,
    CONSTRAINT [PK_BookCATMaster] PRIMARY KEY CLUSTERED ([Id] ASC)
);

