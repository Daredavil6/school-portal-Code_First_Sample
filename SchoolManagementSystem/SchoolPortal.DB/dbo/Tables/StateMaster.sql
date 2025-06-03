CREATE TABLE [dbo].[StateMaster] (
    [Id]            UNIQUEIDENTIFIER NOT NULL,
    [StateName]     VARCHAR (100)    NULL,
    [CountryId]     UNIQUEIDENTIFIER NOT NULL,
    [IsActive]      BIT              NOT NULL,
    [IsDeleted]     BIT              NOT NULL,
    [CreatedBy]     UNIQUEIDENTIFIER NULL,
    [CreatedDate]   DATETIME         NOT NULL,
    [ModifiedBy]    UNIQUEIDENTIFIER NULL,
    [ModifiedDate]  DATETIME         NULL,
    [Status]        VARCHAR (10)     NULL,
    [StatusMessage] VARCHAR (250)    NULL,
    CONSTRAINT [PK_StateMaster] PRIMARY KEY CLUSTERED ([Id] ASC)
);

