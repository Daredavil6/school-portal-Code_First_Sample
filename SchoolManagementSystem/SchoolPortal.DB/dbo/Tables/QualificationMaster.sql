CREATE TABLE [dbo].[QualificationMaster] (
    [Id]                      UNIQUEIDENTIFIER NOT NULL,
    [QualificationName]       VARCHAR (50)     NULL,
    [IsTeachingQualification] BIT              NOT NULL,
    [IsActive]                BIT              NOT NULL,
    [IsDeleted]               BIT              NOT NULL,
    [CreatedBy]               UNIQUEIDENTIFIER NULL,
    [CreatedDate]             DATETIME         NOT NULL,
    [ModifiedBy]              UNIQUEIDENTIFIER NULL,
    [ModifiedDate]            DATETIME         NULL,
    [Status]                  VARCHAR (10)     DEFAULT ('INC') NULL,
    [StatusMessage]           NVARCHAR (255)   NULL,
    CONSTRAINT [PK_QualificationMaster] PRIMARY KEY CLUSTERED ([Id] ASC)
);

