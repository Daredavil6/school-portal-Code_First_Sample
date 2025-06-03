CREATE TABLE [dbo].[BillMaster] (
    [Id]            UNIQUEIDENTIFIER NOT NULL,
    [Number]        VARCHAR (50)     NOT NULL,
    [Date]          DATETIME         NOT NULL,
    [DueDate]       DATETIME         NULL,
    [Description]   VARCHAR (150)    NULL,
    [VendorId]      UNIQUEIDENTIFIER NOT NULL,
    [VehicleId]     UNIQUEIDENTIFIER NULL,
    [Amount]        DECIMAL (18, 2)  NULL,
    [TaxAmount]     DECIMAL (18, 2)  NULL,
    [TotalAmount]   DECIMAL (18, 2)  NULL,
    [CompanyId]     UNIQUEIDENTIFIER NOT NULL,
    [SchoolId]      UNIQUEIDENTIFIER NOT NULL,
    [IsActive]      BIT              DEFAULT ((1)) NOT NULL,
    [IsDeleted]     BIT              DEFAULT ((0)) NOT NULL,
    [CreatedBy]     UNIQUEIDENTIFIER NULL,
    [CreatedDate]   DATETIME         DEFAULT (getdate()) NOT NULL,
    [ModifiedBy]    UNIQUEIDENTIFIER NULL,
    [ModifiedDate]  DATETIME         NULL,
    [Status]        CHAR (10)        DEFAULT ('INC') NOT NULL,
    [StatusMessage] NVARCHAR (255)   NULL,
    CONSTRAINT [PK_BillMaster] PRIMARY KEY CLUSTERED ([Id] ASC)
);

