CREATE TABLE [dbo].[TeacherSectionDetails] (
    [Id]             UNIQUEIDENTIFIER NOT NULL,
    [TeacherId]      UNIQUEIDENTIFIER NOT NULL,
    [ClassId]        UNIQUEIDENTIFIER NOT NULL,
    [SectionId]      UNIQUEIDENTIFIER NOT NULL,
    [SubjectId]      UNIQUEIDENTIFIER NOT NULL,
    [IsClassTeacher] BIT              NOT NULL,
    [SchoolId]       UNIQUEIDENTIFIER NOT NULL,
    [CompanyId]      UNIQUEIDENTIFIER NOT NULL,
    [IsActive]       BIT              DEFAULT ((1)) NOT NULL,
    [IsDeleted]      BIT              DEFAULT ((0)) NOT NULL,
    [CreatedBy]      UNIQUEIDENTIFIER NULL,
    [CreatedDate]    DATETIME         DEFAULT (getdate()) NOT NULL,
    [ModifiedBy]     UNIQUEIDENTIFIER NULL,
    [ModifiedDate]   DATETIME         NULL,
    [Status]         VARCHAR (10)     DEFAULT ('INC') NULL,
    [StatusMessage]  NVARCHAR (255)   NULL,
    CONSTRAINT [PK_TeacherSectionDetails] PRIMARY KEY CLUSTERED ([Id] ASC)
);

