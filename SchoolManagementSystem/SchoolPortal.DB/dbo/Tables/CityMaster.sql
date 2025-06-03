CREATE TABLE [dbo].[CityMaster] (
    [Id]            UNIQUEIDENTIFIER NOT NULL,
    [CityName]      VARCHAR (100)    NULL,
    [CityStateId]   UNIQUEIDENTIFIER NOT NULL,
    [IsActive]      BIT              NOT NULL,
    [IsDeleted]     BIT              NOT NULL,
    [CreatedBy]     UNIQUEIDENTIFIER NULL,
    [CreatedDate]   DATETIME         NOT NULL,
    [ModifiedBy]    UNIQUEIDENTIFIER NULL,
    [ModifiedDate]  DATETIME         NULL,
    [Status]        VARCHAR (10)     NOT NULL,
    [StatusMessage] VARCHAR (250)    NULL,
    CONSTRAINT [PKCityMaster] PRIMARY KEY CLUSTERED ([Id] ASC)
);

