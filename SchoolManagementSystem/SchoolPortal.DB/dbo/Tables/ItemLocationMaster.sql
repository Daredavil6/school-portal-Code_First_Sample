CREATE TABLE [dbo].[ItemLocationMaster] (
    [Id]                      UNIQUEIDENTIFIER NOT NULL,
    [ItemLocationName]        VARCHAR (100)    NULL,
    [ItemLocationDescription] VARCHAR (250)    NULL,
    [Building]                VARCHAR (100)    NULL,
    [Floor]                   VARCHAR (50)     NULL,
    [LocationId]              UNIQUEIDENTIFIER NOT NULL,
    [ItemLocationCapacity]    INT              NULL,
    [CompanyId]               UNIQUEIDENTIFIER NOT NULL,
    [SchoolId]                UNIQUEIDENTIFIER NOT NULL,
    [IsActive]                BIT              DEFAULT ((1)) NOT NULL,
    [IsDeleted]               BIT              DEFAULT ((0)) NOT NULL,
    [CreatedBy]               UNIQUEIDENTIFIER NULL,
    [CreatedDate]             DATETIME         DEFAULT (getdate()) NOT NULL,
    [ModifiedBy]              UNIQUEIDENTIFIER NULL,
    [ModifiedDate]            DATETIME         NULL,
    [Status]                  VARCHAR (10)     DEFAULT ('INC') NULL,
    [StatusMessage]           NVARCHAR (255)   NULL,
    CONSTRAINT [PK_ItemLocationMaster] PRIMARY KEY CLUSTERED ([Id] ASC)
);

