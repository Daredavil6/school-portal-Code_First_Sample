CREATE TABLE [dbo].[RouteMaster] (
    [Id]                UNIQUEIDENTIFIER NOT NULL,
    [RouteMasterCode]   VARCHAR (50)     NULL,
    [RouteMasterName]   VARCHAR (150)    NULL,
    [SessionId]         UNIQUEIDENTIFIER NOT NULL,
    [StartLocationId]   UNIQUEIDENTIFIER NOT NULL,
    [EndLocationId]     UNIQUEIDENTIFIER NOT NULL,
    [ApplicableClasses] VARCHAR (100)    NULL,
    [CompanyId]         UNIQUEIDENTIFIER NOT NULL,
    [SchoolId]          UNIQUEIDENTIFIER NOT NULL,
    [IsActive]          BIT              DEFAULT ((1)) NOT NULL,
    [IsDeleted]         BIT              DEFAULT ((0)) NOT NULL,
    [CreatedBy]         UNIQUEIDENTIFIER NULL,
    [CreatedDate]       DATETIME         DEFAULT (getdate()) NOT NULL,
    [ModifiedBy]        UNIQUEIDENTIFIER NULL,
    [ModifiedDate]      DATETIME         NULL,
    [Status]            VARCHAR (10)     DEFAULT ('INC') NULL,
    [StatusMessage]     NVARCHAR (255)   NULL,
    CONSTRAINT [PK_RouteMaster] PRIMARY KEY CLUSTERED ([Id] ASC)
);

