CREATE TABLE [dbo].[SubjectMaster] (
    [Id]              UNIQUEIDENTIFIER NOT NULL,
    [SubjectName]     VARCHAR (100)    NULL,
    [CompanyMasterId] UNIQUEIDENTIFIER NOT NULL,
    [SchoolMasterId]  UNIQUEIDENTIFIER NOT NULL,
    [IsScholastic]    BIT              NULL,
    [IsActive]        BIT              DEFAULT ((1)) NOT NULL,
    [IsDeleted]       BIT              DEFAULT ((0)) NOT NULL,
    [CreatedBy]       UNIQUEIDENTIFIER NOT NULL,
    [CreatedDate]     DATETIME         DEFAULT (getdate()) NOT NULL,
    [ModifiedBy]      UNIQUEIDENTIFIER NULL,
    [ModifiedDate]    DATETIME         NULL,
    [Status]          VARCHAR (10)     DEFAULT ('INC') NOT NULL,
    [StatusMessage]   VARCHAR (250)    NULL,
    CONSTRAINT [PKSubjectMaster] PRIMARY KEY CLUSTERED ([Id] ASC)
);

