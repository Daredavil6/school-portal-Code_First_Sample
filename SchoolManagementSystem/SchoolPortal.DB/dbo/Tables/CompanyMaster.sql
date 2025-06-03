CREATE TABLE [dbo].[CompanyMaster] (
    [Id]                UNIQUEIDENTIFIER NOT NULL,
    [CompanyName]       VARCHAR (50)     NULL,
    [Description]       VARCHAR (150)    NULL,
    [Address]           VARCHAR (150)    NULL,
    [CityId]            UNIQUEIDENTIFIER NOT NULL,
    [StateId]           UNIQUEIDENTIFIER NOT NULL,
    [CountryId]         UNIQUEIDENTIFIER NOT NULL,
    [ZipCode]           VARCHAR (50)     NULL,
    [Email]             VARCHAR (50)     NULL,
    [IsActive]          BIT              NOT NULL,
    [IsDeleted]         BIT              NOT NULL,
    [CreatedBy]         UNIQUEIDENTIFIER NULL,
    [CreatedDate]       DATETIME         NOT NULL,
    [ModifiedBy]        UNIQUEIDENTIFIER NULL,
    [ModifiedDate]      DATETIME         NULL,
    [EstablishmentYear] VARCHAR (50)     NULL,
    [JudistrictionArea] UNIQUEIDENTIFIER NOT NULL,
    [Status]            VARCHAR (10)     NULL,
    [StatusMessage]     VARCHAR (250)    NULL,
    CONSTRAINT [PK_CompanyMaster] PRIMARY KEY CLUSTERED ([Id] ASC)
);

