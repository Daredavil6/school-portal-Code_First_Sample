CREATE TABLE [dbo].[MarksGradeMaster] (
    [Id]            UNIQUEIDENTIFIER NOT NULL,
    [ClassId]       UNIQUEIDENTIFIER NOT NULL,
    [MinRange]      INT              NULL,
    [MaxRange]      INT              NULL,
    [Code]          VARCHAR (10)     NULL,
    [Point]         DECIMAL (18, 2)  NULL,
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
    CONSTRAINT [PK_MarksGradeMaster] PRIMARY KEY CLUSTERED ([Id] ASC)
);

