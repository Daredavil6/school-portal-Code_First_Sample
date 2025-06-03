CREATE TABLE [dbo].[StudentAttendanceDetailsHistory] (
    [Id]            UNIQUEIDENTIFIER NOT NULL,
    [StudentGUID]   UNIQUEIDENTIFIER NOT NULL,
    [ClassId]       UNIQUEIDENTIFIER NOT NULL,
    [SectionId]     UNIQUEIDENTIFIER NOT NULL,
    [Month]         INT              NULL,
    [Year]          INT              NULL,
    [Date]          DATETIME         NOT NULL,
    [Reason_Id]     INT              NULL,
    [Time]          VARCHAR (50)     NULL,
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
    CONSTRAINT [PK_StudentAttendanceDetailsHistory] PRIMARY KEY CLUSTERED ([Id] ASC)
);

