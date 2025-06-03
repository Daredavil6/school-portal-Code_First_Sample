CREATE TABLE [dbo].[BloodGroupMaster] (
    [Id]            UNIQUEIDENTIFIER NOT NULL,
    [Name]          VARCHAR (100)    NOT NULL,
    [IsActive]      BIT              DEFAULT ((1)) NOT NULL,
    [IsDeleted]     BIT              DEFAULT ((0)) NOT NULL,
    [CreatedBy]     UNIQUEIDENTIFIER NULL,
    [CreatedDate]   DATETIME         NOT NULL,
    [ModifiedBy]    UNIQUEIDENTIFIER NULL,
    [ModifiedDate]  DATETIME         NULL,
    [Status]        VARCHAR (10)     DEFAULT ('INC') NULL,
    [StatusMessage] NVARCHAR (255)   NULL,
    CONSTRAINT [PK_BloodGroupMaster] PRIMARY KEY CLUSTERED ([Id] ASC)
);

