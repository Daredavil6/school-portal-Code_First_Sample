CREATE TABLE [dbo].[UserDetails] (
    [Id]            UNIQUEIDENTIFIER NOT NULL,
    [UserName]      VARCHAR (250)    NOT NULL,
    [UserPassword]  NVARCHAR (256)   NOT NULL,
    [FirstName]     VARCHAR (50)     NOT NULL,
    [LastName]      VARCHAR (50)     NOT NULL,
    [EmailAddress]  VARCHAR (250)    NOT NULL,
    [DesignationId] UNIQUEIDENTIFIER NOT NULL,
    [UserRoleId]    UNIQUEIDENTIFIER NULL,
    [IsSuperUser]   BIT              NULL,
    [CompanyId]     UNIQUEIDENTIFIER NULL,
    [SchoolId]      UNIQUEIDENTIFIER NULL,
    [IsActive]      BIT              NOT NULL,
    [IsDeleted]     BIT              NOT NULL,
    [CreatedBy]     UNIQUEIDENTIFIER NULL,
    [CreatedDate]   DATETIME         NOT NULL,
    [ModifiedBy]    UNIQUEIDENTIFIER NULL,
    [ModifiedDate]  DATETIME         NULL,
    [Status]        VARCHAR (10)     DEFAULT ('INC') NULL,
    [StatusMessage] NVARCHAR (255)   NULL,
    CONSTRAINT [PK_UserDetails] PRIMARY KEY CLUSTERED ([Id] ASC)
);

