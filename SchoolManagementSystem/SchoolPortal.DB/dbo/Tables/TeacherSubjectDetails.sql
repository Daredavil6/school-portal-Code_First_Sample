CREATE TABLE [dbo].[TeacherSubjectDetails] (
    [Id]            UNIQUEIDENTIFIER NOT NULL,
    [TeacherId]     UNIQUEIDENTIFIER NOT NULL,
    [SubjectId]     UNIQUEIDENTIFIER NOT NULL,
    [ClassMasterId] UNIQUEIDENTIFIER NOT NULL,
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
    CONSTRAINT [PK_TeacherSubjectDetails] PRIMARY KEY CLUSTERED ([TeacherId] ASC, [SubjectId] ASC, [ClassMasterId] ASC)
);

