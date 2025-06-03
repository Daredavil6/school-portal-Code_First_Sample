CREATE TABLE [dbo].[SalaryHeadMaster] (
    [Id]            UNIQUEIDENTIFIER NOT NULL,
    [Code]          VARCHAR (10)     NULL,
    [Description]   VARCHAR (50)     NULL,
    [IsReadOnly]    BIT              NULL,
    [Type]          VARCHAR (10)     NOT NULL,
    [IsDeduction]   BIT              NOT NULL,
    [CompanyId]     UNIQUEIDENTIFIER NOT NULL,
    [SchoolId]      UNIQUEIDENTIFIER NOT NULL,
    [IsActive]      BIT              DEFAULT ((1)) NOT NULL,
    [IsDeleted]     BIT              DEFAULT ((0)) NOT NULL,
    [CreatedBy]     UNIQUEIDENTIFIER NULL,
    [CreatedDate]   DATETIME         DEFAULT (getdate()) NOT NULL,
    [ModifiedBy]    UNIQUEIDENTIFIER NULL,
    [ModifiedDate]  DATETIME         NULL,
    [Status]        VARCHAR (10)     DEFAULT ('INC') NULL,
    [StatusMessage] NVARCHAR (255)   NULL,
    CONSTRAINT [PK_SalaryHeadMaster] PRIMARY KEY CLUSTERED ([Id] ASC)
);

