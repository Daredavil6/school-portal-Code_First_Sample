CREATE TABLE [dbo].[AssesmentMaster] (
    [Id]                  UNIQUEIDENTIFIER NOT NULL,
    [Name]                VARCHAR (150)    NULL,
    [Description]         VARCHAR (250)    NULL,
    [PercentageWeightage] DECIMAL (18, 2)  NULL,
    [FromPeriod]          DATETIME         NULL,
    [ToPeriod]            DATETIME         NULL,
    [CompanyId]           UNIQUEIDENTIFIER NOT NULL,
    [SchoolId]            UNIQUEIDENTIFIER NOT NULL,
    [IsActive]            BIT              DEFAULT ((1)) NOT NULL,
    [IsDeleted]           BIT              DEFAULT ((0)) NOT NULL,
    [CreatedBy]           UNIQUEIDENTIFIER NULL,
    [CreatedDate]         DATETIME         DEFAULT (getdate()) NOT NULL,
    [ModifiedBy]          UNIQUEIDENTIFIER NULL,
    [ModifiedDate]        DATETIME         NULL,
    [Status]              CHAR (10)        DEFAULT ('INC') NOT NULL,
    [StatusMessage]       NVARCHAR (255)   NULL,
    CONSTRAINT [PK_AssesmentMaster] PRIMARY KEY CLUSTERED ([Id] ASC)
);

