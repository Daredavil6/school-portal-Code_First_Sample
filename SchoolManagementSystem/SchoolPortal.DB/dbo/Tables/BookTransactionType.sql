CREATE TABLE [dbo].[BookTransactionType] (
    [Id]              UNIQUEIDENTIFIER NOT NULL,
    [TransactionType] VARCHAR (100)    NOT NULL,
    [IsActive]        BIT              NOT NULL,
    [IsDeleted]       BIT              NOT NULL,
    [CompanyId]       UNIQUEIDENTIFIER NOT NULL,
    [SchoolId]        UNIQUEIDENTIFIER NOT NULL,
    [CreatedBy]       UNIQUEIDENTIFIER NULL,
    [CreatedDate]     DATETIME         NOT NULL,
    [ModifiedBy]      UNIQUEIDENTIFIER NULL,
    [ModifiedDate]    DATETIME         NULL,
    [Status]          VARCHAR (10)     NULL,
    [StatusMessage]   NVARCHAR (255)   NULL,
    CONSTRAINT [PK_BookTransactionType] PRIMARY KEY CLUSTERED ([Id] ASC)
);

