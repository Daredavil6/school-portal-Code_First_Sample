CREATE TABLE [dbo].[GenderMaster] (
    [Id]            UNIQUEIDENTIFIER NOT NULL,
    [Gender]        VARCHAR (50)     NULL,
    [IsActive]      BIT              NOT NULL,
    [IsDeleted]     BIT              NULL,
    [CreatedBy]     UNIQUEIDENTIFIER NULL,
    [CreatedDate]   DATETIME         NULL,
    [ModifiedBy]    UNIQUEIDENTIFIER NULL,
    [ModifiedDate]  DATETIME         NULL,
    [Status]        VARCHAR (10)     NULL,
    [StatusMessage] NVARCHAR (255)   NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

