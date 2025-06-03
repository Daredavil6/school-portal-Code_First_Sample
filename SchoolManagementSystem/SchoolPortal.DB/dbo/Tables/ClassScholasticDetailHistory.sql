CREATE TABLE [dbo].[ClassScholasticDetailHistory] (
    [Id]            UNIQUEIDENTIFIER NOT NULL,
    [ClassMasterId] UNIQUEIDENTIFIER NOT NULL,
    [ScholasticsId] UNIQUEIDENTIFIER NOT NULL,
    [SessionId]     UNIQUEIDENTIFIER NOT NULL,
    [IsActive]      BIT              DEFAULT ((1)) NOT NULL,
    [IsDeleted]     BIT              DEFAULT ((0)) NOT NULL,
    [CompanyId]     UNIQUEIDENTIFIER NOT NULL,
    [SchoolId]      UNIQUEIDENTIFIER NOT NULL,
    [CreatedBy]     UNIQUEIDENTIFIER NULL,
    [CreatedDate]   DATETIME         DEFAULT (getdate()) NOT NULL,
    [ModifiedBy]    UNIQUEIDENTIFIER NULL,
    [ModifiedDate]  DATETIME         NULL,
    [Status]        VARCHAR (10)     DEFAULT ('INC') NULL,
    [StatusMessage] NVARCHAR (255)   NULL,
    CONSTRAINT [PK_ClassScholasticDetailHistory] PRIMARY KEY CLUSTERED ([Id] ASC)
);

