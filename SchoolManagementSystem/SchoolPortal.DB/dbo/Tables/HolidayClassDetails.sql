CREATE TABLE [dbo].[HolidayClassDetails] (
    [Id]              UNIQUEIDENTIFIER NOT NULL,
    [ClassMasterId]   UNIQUEIDENTIFIER NOT NULL,
    [SectionMasterId] UNIQUEIDENTIFIER NOT NULL,
    [CompanyId]       UNIQUEIDENTIFIER NOT NULL,
    [SchoolId]        UNIQUEIDENTIFIER NOT NULL,
    [IsActive]        BIT              DEFAULT ((1)) NOT NULL,
    [IsDeleted]       BIT              DEFAULT ((0)) NOT NULL,
    [CreatedBy]       UNIQUEIDENTIFIER NULL,
    [CreatedDate]     DATETIME         DEFAULT (getdate()) NOT NULL,
    [ModifiedBy]      UNIQUEIDENTIFIER NULL,
    [ModifiedDate]    DATETIME         NULL,
    [Status]          VARCHAR (10)     DEFAULT ('INC') NULL,
    [StatusMessage]   NVARCHAR (255)   NULL,
    CONSTRAINT [PK_HolidayClassDetails_1] PRIMARY KEY CLUSTERED ([Id] ASC, [ClassMasterId] ASC, [SectionMasterId] ASC)
);

