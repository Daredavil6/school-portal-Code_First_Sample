CREATE TABLE [dbo].[TimeTableClassPeriodDetails] (
    [Id]            UNIQUEIDENTIFIER NOT NULL,
    [ClassId]       UNIQUEIDENTIFIER NOT NULL,
    [SectionId]     UNIQUEIDENTIFIER NOT NULL,
    [SubjectId]     INT              NULL,
    [PeriodId]      UNIQUEIDENTIFIER NOT NULL,
    [DayOfWeek]     UNIQUEIDENTIFIER NOT NULL,
    [SessionId]     UNIQUEIDENTIFIER NOT NULL,
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
    CONSTRAINT [PK_TimeTableClassPeriodDetails] PRIMARY KEY CLUSTERED ([Id] ASC)
);

