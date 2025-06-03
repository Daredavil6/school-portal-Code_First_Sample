CREATE TABLE [dbo].[AttendanceReasonMaster] (
    [Id]            UNIQUEIDENTIFIER NOT NULL,
    [Code]          VARCHAR (10)     NULL,
    [Name]          VARCHAR (150)    NULL,
    [Description]   VARCHAR (250)    NULL,
    [CompanyId]     UNIQUEIDENTIFIER NOT NULL,
    [SchoolId]      UNIQUEIDENTIFIER NOT NULL,
    [IsActive]      BIT              DEFAULT ((1)) NULL,
    [IsDeleted]     BIT              DEFAULT ((0)) NOT NULL,
    [CreatedBy]     UNIQUEIDENTIFIER NULL,
    [CreatedDate]   DATETIME         DEFAULT (getdate()) NOT NULL,
    [ModifiedBy]    UNIQUEIDENTIFIER NULL,
    [ModifiedDate]  DATETIME         NULL,
    [Status]        CHAR (10)        DEFAULT ('INC') NOT NULL,
    [StatusMessage] NVARCHAR (255)   NULL,
    CONSTRAINT [PK_AttendanceReasonMaster] PRIMARY KEY CLUSTERED ([Id] ASC)
);

