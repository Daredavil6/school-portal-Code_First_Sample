CREATE TABLE [dbo].[StudentAttendanceDetails] (
    [Id]                 UNIQUEIDENTIFIER NOT NULL,
    [StudentGUId]        UNIQUEIDENTIFIER NOT NULL,
    [ClassId]            UNIQUEIDENTIFIER NOT NULL,
    [SectionId]          UNIQUEIDENTIFIER NOT NULL,
    [Month]              INT              NULL,
    [Year]               INT              NULL,
    [AttemdenceDate]     DATETIME         NOT NULL,
    [AttendanceReasonId] INT              NULL,
    [AttendenceTime]     VARCHAR (50)     NULL,
    [CompanyId]          UNIQUEIDENTIFIER NOT NULL,
    [SchoolId]           UNIQUEIDENTIFIER NOT NULL,
    [IsActive]           BIT              DEFAULT ((1)) NOT NULL,
    [IsDeleted]          BIT              DEFAULT ((0)) NOT NULL,
    [CreatedBy]          UNIQUEIDENTIFIER NULL,
    [CreatedDate]        DATETIME         DEFAULT (getdate()) NOT NULL,
    [ModifiedBy]         UNIQUEIDENTIFIER NULL,
    [ModifiedDate]       DATETIME         NULL,
    [Status]             VARCHAR (10)     DEFAULT ('INC') NULL,
    [StatusMessage]      NVARCHAR (255)   NULL,
    CONSTRAINT [PK_StudentAttendanceDetails] PRIMARY KEY CLUSTERED ([Id] ASC)
);

