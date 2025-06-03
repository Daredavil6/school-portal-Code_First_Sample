CREATE TABLE [dbo].[TimeTablePeriodMasterHistory] (
    [Id]            UNIQUEIDENTIFIER NOT NULL,
    [PeriodId]      UNIQUEIDENTIFIER NOT NULL,
    [Description]   VARCHAR (50)     NOT NULL,
    [PeriodNumber]  UNIQUEIDENTIFIER NOT NULL,
    [StartTime]     TIME (0)         NOT NULL,
    [EndTime]       TIME (0)         NOT NULL,
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
    CONSTRAINT [PK_TimeTablePeriodMasterHistory] PRIMARY KEY CLUSTERED ([Id] ASC)
);

