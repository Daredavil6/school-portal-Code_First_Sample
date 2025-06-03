CREATE TABLE [dbo].[ExamUnitMaster] (
    [Id]                 UNIQUEIDENTIFIER NOT NULL,
    [ExamUnitMasterName] VARCHAR (50)     NULL,
    [IsActive]           BIT              DEFAULT ((1)) NOT NULL,
    [IsDeleted]          BIT              DEFAULT ((0)) NOT NULL,
    [CreatedBy]          UNIQUEIDENTIFIER NULL,
    [CreatedDate]        DATETIME         DEFAULT (getdate()) NOT NULL,
    [ModifiedBy]         UNIQUEIDENTIFIER NULL,
    [ModifiedDate]       DATETIME         NULL,
    [Status]             VARCHAR (10)     DEFAULT ('INC') NULL,
    [StatusMessage]      NVARCHAR (255)   NULL,
    CONSTRAINT [PK_ExamUnitMaster_1] PRIMARY KEY CLUSTERED ([Id] ASC)
);

