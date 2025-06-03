CREATE TABLE [dbo].[TimeTableDetailsHistory] (
    [Id]            UNIQUEIDENTIFIER NOT NULL,
    [PeriodId]      UNIQUEIDENTIFIER NOT NULL,
    [TeacherId]     UNIQUEIDENTIFIER NOT NULL,
    [ClassId]       UNIQUEIDENTIFIER NOT NULL,
    [SectionId]     UNIQUEIDENTIFIER NOT NULL,
    [SubjectId]     UNIQUEIDENTIFIER NOT NULL,
    [DayOfWeek]     UNIQUEIDENTIFIER NOT NULL,
    [CompanyId]     UNIQUEIDENTIFIER NOT NULL,
    [SchoolId]      UNIQUEIDENTIFIER NOT NULL,
    [SessionId]     UNIQUEIDENTIFIER NOT NULL,
    [IsActive]      BIT              DEFAULT ((1)) NOT NULL,
    [IsDeleted]     BIT              DEFAULT ((0)) NOT NULL,
    [CreatedBy]     UNIQUEIDENTIFIER NULL,
    [CreatedDate]   DATETIME         DEFAULT (getdate()) NOT NULL,
    [ModifiedBy]    UNIQUEIDENTIFIER NULL,
    [ModifiedDate]  DATETIME         NULL,
    [Status]        VARCHAR (10)     DEFAULT ('INC') NULL,
    [StatusMessage] NVARCHAR (255)   NULL,
    CONSTRAINT [PK_TimeTableDetailsHistory] PRIMARY KEY CLUSTERED ([Id] ASC)
);

