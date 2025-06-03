CREATE TABLE [dbo].[CountryMaster] (
    [Id]            UNIQUEIDENTIFIER NOT NULL,
    [Name]   VARCHAR (100)    NULL,
    [IsActive]      BIT              NOT NULL,
    [IsDeleted]     BIT              NOT NULL,
    [CreatedBy]     UNIQUEIDENTIFIER NULL,
    [CreatedDate]   DATETIME         NOT NULL,
    [ModifiedBy]    UNIQUEIDENTIFIER NULL,
    [ModifiedDate]  DATETIME         NULL,
    [Status]        VARCHAR (10)     NOT NULL,
    [StatusMessage] VARCHAR (250)    NULL,
    CONSTRAINT [PK_CountryMaster] PRIMARY KEY CLUSTERED ([Id] ASC)
);

