CREATE TABLE [dbo].[VehicleExpenseDetails] (
    [Id]                       UNIQUEIDENTIFIER NOT NULL,
    [VehicleMasterId]          UNIQUEIDENTIFIER NOT NULL,
    [VehicleType]              VARCHAR (50)     NOT NULL,
    [ExpenseDetail]            VARCHAR (50)     NULL,
    [ExpenseDetailDescription] VARCHAR (150)    NULL,
    [ExpenseDate]              DATETIME         NULL,
    [ExpenseAmount]            DECIMAL (18, 2)  NULL,
    [CompanyId]                UNIQUEIDENTIFIER NOT NULL,
    [SchoolId]                 UNIQUEIDENTIFIER NOT NULL,
    [IsActive]                 BIT              DEFAULT ((1)) NOT NULL,
    [IsDeleted]                BIT              DEFAULT ((0)) NOT NULL,
    [CreatedBy]                UNIQUEIDENTIFIER NULL,
    [CreatedDate]              DATETIME         DEFAULT (getdate()) NOT NULL,
    [ModifiedBy]               UNIQUEIDENTIFIER NULL,
    [ModifiedDate]             DATETIME         NULL,
    [Status]                   VARCHAR (10)     DEFAULT ('INC') NULL,
    [StatusMessage]            NVARCHAR (255)   NULL,
    CONSTRAINT [PK_VehicleExpenseDetails] PRIMARY KEY CLUSTERED ([Id] ASC)
);

