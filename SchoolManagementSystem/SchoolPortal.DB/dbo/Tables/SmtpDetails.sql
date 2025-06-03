CREATE TABLE [dbo].[SmtpDetails] (
    [Id]            UNIQUEIDENTIFIER NOT NULL,
    [FromAddress]   VARCHAR (100)    NULL,
    [Gateway]       VARCHAR (100)    NULL,
    [UserName]      VARCHAR (50)     NULL,
    [Password]      VARCHAR (50)     NULL,
    [Subject]       VARCHAR (6000)   NULL,
    [BodyText]      VARCHAR (6000)   NULL,
    [EmailType]     VARCHAR (50)     NULL,
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
    CONSTRAINT [PK_SmtpDetails] PRIMARY KEY CLUSTERED ([Id] ASC)
);

