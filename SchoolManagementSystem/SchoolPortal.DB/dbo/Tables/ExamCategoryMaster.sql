CREATE TABLE [dbo].[ExamCategoryMaster] (
    [Id]                    UNIQUEIDENTIFIER NOT NULL,
    [ExamCategoryName]      VARCHAR (50)     NULL,
    [ExamCategoryDesc]      VARCHAR (50)     NULL,
    [ExamCategoryCompanyId] UNIQUEIDENTIFIER NOT NULL,
    [ExamCategorySchoolId]  UNIQUEIDENTIFIER NOT NULL,
    [IsActive]              BIT              DEFAULT ((1)) NOT NULL,
    [IsDeleted]             BIT              DEFAULT ((0)) NOT NULL,
    [CreatedBy]             UNIQUEIDENTIFIER NULL,
    [CreatedDate]           DATETIME         DEFAULT (getdate()) NOT NULL,
    [ModifiedBy]            UNIQUEIDENTIFIER NULL,
    [ModifiedDate]          DATETIME         NULL,
    [Status]                VARCHAR (10)     DEFAULT ('INC') NULL,
    [StatusMessage]         NVARCHAR (255)   NULL,
    CONSTRAINT [PK_ExamCategoryMaster] PRIMARY KEY CLUSTERED ([Id] ASC)
);

