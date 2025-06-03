CREATE TABLE [dbo].[ClassSubjectDetail] (
    [Id]            UNIQUEIDENTIFIER NOT NULL,
    [ClassMasterId] UNIQUEIDENTIFIER NOT NULL,
    [SubjectId]     UNIQUEIDENTIFIER NOT NULL,
    [IsActive]      BIT              DEFAULT ((1)) NOT NULL,
    [IsDeleted]     BIT              DEFAULT ((0)) NOT NULL,
    [CompanyId]     UNIQUEIDENTIFIER NOT NULL,
    [SchoolId]      UNIQUEIDENTIFIER NOT NULL,
    [CreatedBy]     UNIQUEIDENTIFIER NULL,
    [CreatedDate]   DATETIME         DEFAULT (getdate()) NOT NULL,
    [ModifiedBy]    UNIQUEIDENTIFIER NULL,
    [ModifiedDate]  DATETIME         NULL,
    [Status]        VARCHAR (10)     DEFAULT ('INC') NULL,
    [StatusMessage] NVARCHAR (255)   NULL,
    CONSTRAINT [PK_ClassSubjectDetail] PRIMARY KEY CLUSTERED ([ClassMasterId] ASC, [SubjectId] ASC)
);

