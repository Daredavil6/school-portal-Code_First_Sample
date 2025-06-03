CREATE TABLE [dbo].[StudentReportCardMaster] (
    [Id]            UNIQUEIDENTIFIER NOT NULL,
    [StudentGUID]   UNIQUEIDENTIFIER NOT NULL,
    [ClassId]       UNIQUEIDENTIFIER NOT NULL,
    [SectionId]     UNIQUEIDENTIFIER NOT NULL,
    [SessionId]     UNIQUEIDENTIFIER NOT NULL,
    [Type]          VARCHAR (50)     NULL,
    [TypeValue]     VARCHAR (50)     NULL,
    [Period]        DATETIME         NULL,
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
    CONSTRAINT [PK_StudentReportCardMaster_1] PRIMARY KEY CLUSTERED ([Id] ASC)
);

