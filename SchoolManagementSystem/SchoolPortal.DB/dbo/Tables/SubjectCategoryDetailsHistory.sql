CREATE TABLE [dbo].[SubjectCategoryDetailsHistory] (
    [Id]                UNIQUEIDENTIFIER NOT NULL,
    [SubjectCategoryId] UNIQUEIDENTIFIER NOT NULL,
    [Name]              VARCHAR (100)    NULL,
    [Description]       VARCHAR (250)    NULL,
    [ParentId]          INT              NULL,
    [SubjectId]         INT              NULL,
    [SessionId]         UNIQUEIDENTIFIER NOT NULL,
    [CompanyId]         UNIQUEIDENTIFIER NOT NULL,
    [SchoolId]          UNIQUEIDENTIFIER NOT NULL,
    [IsActive]          BIT              NOT NULL,
    [IsDeleted]         BIT              NOT NULL,
    [CreatedBy]         UNIQUEIDENTIFIER NULL,
    [CreatedDate]       DATETIME         NOT NULL,
    [ModifiedBy]        UNIQUEIDENTIFIER NULL,
    [ModifiedDate]      DATETIME         NULL,
    [Status]            VARCHAR (10)     DEFAULT ('INC') NULL,
    [StatusMessage]     NVARCHAR (255)   NULL,
    CONSTRAINT [PK_SubjectCategoryDetailsHistory] PRIMARY KEY CLUSTERED ([Id] ASC)
);

