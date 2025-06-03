CREATE TABLE [dbo].[DeptMaster] (
    [Id]            UNIQUEIDENTIFIER NOT NULL,
    [DeptCode]      VARCHAR (10)     NULL,
    [DeptName]      VARCHAR (150)    NULL,
    [IsActive]      BIT              NOT NULL,
    [IsDeleted]     BIT              NOT NULL,
    [CompanyId]     UNIQUEIDENTIFIER NOT NULL,
    [SchoolId]      UNIQUEIDENTIFIER NOT NULL,
    [CreatedBy]     UNIQUEIDENTIFIER NULL,
    [CreatedDate]   DATETIME         NOT NULL,
    [ModifiedBy]    UNIQUEIDENTIFIER NULL,
    [ModifiedDate]  DATETIME         NULL,
    [Status]        VARCHAR (10)     DEFAULT ('INC') NULL,
    [StatusMessage] NVARCHAR (255)   NULL,
    CONSTRAINT [PK_DeptMaster] PRIMARY KEY CLUSTERED ([Id] ASC)
);

