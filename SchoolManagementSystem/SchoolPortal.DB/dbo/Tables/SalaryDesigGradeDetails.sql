CREATE TABLE [dbo].[SalaryDesigGradeDetails] (
    [Id]                 UNIQUEIDENTIFIER NOT NULL,
    [SalaryHeadMasterId] UNIQUEIDENTIFIER NOT NULL,
    [Value]              DECIMAL (18, 2)  NULL,
    [SessionId]          UNIQUEIDENTIFIER NOT NULL,
    [CompanyId]          UNIQUEIDENTIFIER NOT NULL,
    [SchoolId]           UNIQUEIDENTIFIER NOT NULL,
    [IsActive]           BIT              NOT NULL,
    [IsDeleted]          BIT              NOT NULL,
    [CreatedBy]          UNIQUEIDENTIFIER NULL,
    [CreatedDate]        DATETIME         NOT NULL,
    [ModifiedBy]         UNIQUEIDENTIFIER NULL,
    [ModifiedDate]       DATETIME         NULL,
    [Status]             VARCHAR (10)     DEFAULT ('INC') NULL,
    [StatusMessage]      NVARCHAR (255)   NULL,
    CONSTRAINT [PK_SalaryDesigGradeDetails] PRIMARY KEY CLUSTERED ([Id] ASC)
);

