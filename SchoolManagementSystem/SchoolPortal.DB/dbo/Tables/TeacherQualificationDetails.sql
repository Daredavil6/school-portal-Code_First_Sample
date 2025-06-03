CREATE TABLE [dbo].[TeacherQualificationDetails] (
    [Id]             UNIQUEIDENTIFIER NOT NULL,
    [TeacherId]      UNIQUEIDENTIFIER NOT NULL,
    [QualifcationId] UNIQUEIDENTIFIER NOT NULL,
    [IsActive]       BIT              DEFAULT ((1)) NOT NULL,
    [IsDeleted]      BIT              DEFAULT ((0)) NOT NULL,
    [CreatedBy]      UNIQUEIDENTIFIER NULL,
    [CreatedDate]    DATETIME         DEFAULT (getdate()) NOT NULL,
    [ModifiedBy]     UNIQUEIDENTIFIER NULL,
    [ModifiedDate]   DATETIME         NULL,
    [Status]         VARCHAR (10)     DEFAULT ('INC') NULL,
    [StatusMessage]  NVARCHAR (255)   NULL,
    CONSTRAINT [PK_TeacherQualificationDetails] PRIMARY KEY CLUSTERED ([Id] ASC, [QualifcationId] ASC)
);

