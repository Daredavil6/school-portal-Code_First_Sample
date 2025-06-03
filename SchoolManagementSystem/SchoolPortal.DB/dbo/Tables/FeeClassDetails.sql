CREATE TABLE [dbo].[FeeClassDetails] (
    [Id]             UNIQUEIDENTIFIER NOT NULL,
    [ClassMasterId]  UNIQUEIDENTIFIER NOT NULL,
    [FeesCategoryId] UNIQUEIDENTIFIER NOT NULL,
    [FromDate]       DATETIME         NOT NULL,
    [ToDate]         DATETIME         NOT NULL,
    [Amount]         DECIMAL (18, 2)  NULL,
    [SchoolId]       UNIQUEIDENTIFIER NOT NULL,
    [CompanyId]      UNIQUEIDENTIFIER NOT NULL,
    [SessionId]      UNIQUEIDENTIFIER NOT NULL,
    [IsActive]       BIT              DEFAULT ((1)) NOT NULL,
    [IsDeleted]      BIT              DEFAULT ((0)) NOT NULL,
    [CreatedBy]      UNIQUEIDENTIFIER NULL,
    [CreatedDate]    DATETIME         DEFAULT (getdate()) NOT NULL,
    [ModifiedBy]     UNIQUEIDENTIFIER NULL,
    [ModifiedDate]   DATETIME         NULL,
    [Status]         VARCHAR (10)     DEFAULT ('INC') NULL,
    [StatusMessage]  NVARCHAR (255)   NULL,
    CONSTRAINT [PK_FeesMaster] PRIMARY KEY CLUSTERED ([Id] ASC)
);

