CREATE TABLE [dbo].[LocationMaster] (
    [Id]                     UNIQUEIDENTIFIER NOT NULL,
    [LocationMasterCode]     VARCHAR (50)     NULL,
    [LocationMasterName]     VARCHAR (100)    NULL,
    [LocationMasterCity]     UNIQUEIDENTIFIER NOT NULL,
    [LocationMasterIsActive] BIT              NOT NULL,
    [CompanyId]              UNIQUEIDENTIFIER NOT NULL,
    [SchoolId]               UNIQUEIDENTIFIER NOT NULL,
    [IsActive]               BIT              DEFAULT ((1)) NOT NULL,
    [IsDeleted]              BIT              DEFAULT ((0)) NOT NULL,
    [CreatedBy]              UNIQUEIDENTIFIER NULL,
    [CreatedDate]            DATETIME         DEFAULT (getdate()) NOT NULL,
    [ModifiedBy]             UNIQUEIDENTIFIER NULL,
    [ModifiedDate]           DATETIME         NULL,
    [Status]                 VARCHAR (10)     DEFAULT ('INC') NULL,
    [StatusMessage]          NVARCHAR (255)   NULL,
    CONSTRAINT [PK_LocationMaster] PRIMARY KEY CLUSTERED ([Id] ASC)
);

