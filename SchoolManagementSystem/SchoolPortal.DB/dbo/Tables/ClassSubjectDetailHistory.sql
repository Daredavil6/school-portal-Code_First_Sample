CREATE TABLE [dbo].[ClassSubjectDetailHistory] (
    [Id]            UNIQUEIDENTIFIER NOT NULL,
    [ClassMasterId] UNIQUEIDENTIFIER NOT NULL,
    [SubjectId]     UNIQUEIDENTIFIER NOT NULL,
    [SessionId]     UNIQUEIDENTIFIER NOT NULL,
    [IsActive]      BIT              NOT NULL,
    [IsDeleted]     BIT              NOT NULL,
    [CompanyId]     UNIQUEIDENTIFIER NOT NULL,
    [SchoolId]      UNIQUEIDENTIFIER NOT NULL,
    [CreatedBy]     UNIQUEIDENTIFIER NULL,
    [CreatedDate]   DATETIME         NOT NULL,
    [ModifiedBy]    UNIQUEIDENTIFIER NULL,
    [ModifiedDate]  DATETIME         NULL,
    [Status]        VARCHAR (10)     DEFAULT ('INC') NULL,
    [StatusMessage] NVARCHAR (255)   NULL,
    CONSTRAINT [PK_ClassSubjectDetailHistory] PRIMARY KEY CLUSTERED ([Id] ASC)
);

