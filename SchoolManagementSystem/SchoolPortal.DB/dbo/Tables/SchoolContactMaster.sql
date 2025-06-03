CREATE TABLE [dbo].[SchoolContactMaster] (
    [Id]            UNIQUEIDENTIFIER NOT NULL,
    [SchoolId]      UNIQUEIDENTIFIER NOT NULL,
    [FirstName]     VARCHAR (50)     NULL,
    [LastName]      VARCHAR (50)     NULL,
    [Email]         VARCHAR (50)     NULL,
    [Phone]         VARCHAR (50)     NULL,
    [MobilePhone]   VARCHAR (50)     NULL,
    [AddressLine1]  VARCHAR (50)     NULL,
    [AddressLine2]  VARCHAR (50)     NULL,
    [CityId]        UNIQUEIDENTIFIER NOT NULL,
    [StateId]       UNIQUEIDENTIFIER NOT NULL,
    [CountryId]     UNIQUEIDENTIFIER NOT NULL,
    [IsActive]      BIT              DEFAULT ((1)) NOT NULL,
    [IsDeleted]     BIT              DEFAULT ((0)) NOT NULL,
    [CreatedBy]     UNIQUEIDENTIFIER NULL,
    [CreatedDate]   DATETIME         DEFAULT (getdate()) NOT NULL,
    [ModifiedBy]    UNIQUEIDENTIFIER NULL,
    [ModifiedDate]  DATETIME         NULL,
    [Status]        VARCHAR (10)     DEFAULT ('INC') NULL,
    [StatusMessage] NVARCHAR (255)   NULL,
    CONSTRAINT [PK_SchoolContactMaster] PRIMARY KEY CLUSTERED ([Id] ASC)
);

