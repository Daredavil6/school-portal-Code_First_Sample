CREATE TABLE [dbo].[VoucherMaster] (
    [Id]                UNIQUEIDENTIFIER NOT NULL,
    [VoucherNumber]     VARCHAR (50)     NULL,
    [VoucherName]       VARCHAR (100)    NULL,
    [Description]       VARCHAR (250)    NULL,
    [VoucherDate]       DATETIME         NOT NULL,
    [VoucherAmount]     DECIMAL (18, 2)  NULL,
    [ExpenseCategoryId] UNIQUEIDENTIFIER NOT NULL,
    [CompanyId]         UNIQUEIDENTIFIER NOT NULL,
    [SchoolId]          UNIQUEIDENTIFIER NOT NULL,
    [IsActive]          BIT              DEFAULT ((1)) NOT NULL,
    [IsDeleted]         BIT              DEFAULT ((0)) NOT NULL,
    [CreatedBy]         UNIQUEIDENTIFIER NULL,
    [CreatedDate]       DATETIME         DEFAULT (getdate()) NOT NULL,
    [ModifiedBy]        UNIQUEIDENTIFIER NULL,
    [ModifiedDate]      DATETIME         NULL,
    [Status]            VARCHAR (10)     DEFAULT ('INC') NULL,
    [StatusMessage]     NVARCHAR (255)   NULL,
    CONSTRAINT [PK_VoucherMaster] PRIMARY KEY CLUSTERED ([Id] ASC)
);

