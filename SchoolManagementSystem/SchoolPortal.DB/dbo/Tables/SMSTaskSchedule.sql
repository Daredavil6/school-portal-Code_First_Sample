CREATE TABLE [dbo].[SMSTaskSchedule] (
    [Id]            UNIQUEIDENTIFIER NOT NULL,
    [TaskId]        UNIQUEIDENTIFIER NOT NULL,
    [Sunday]        BIT              NOT NULL,
    [Monday]        BIT              NOT NULL,
    [Tuesday]       BIT              NOT NULL,
    [Wednesday]     BIT              NOT NULL,
    [Thursday]      BIT              NOT NULL,
    [Friday]        BIT              NOT NULL,
    [Saturday]      BIT              NOT NULL,
    [StartTime]     DATETIME         NULL,
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
    CONSTRAINT [PK_SMSTaskSchedule] PRIMARY KEY CLUSTERED ([Id] ASC)
);

