CREATE TABLE [dbo].[EmpProfQualIdetails] (
    [Id]                  UNIQUEIDENTIFIER NOT NULL,
    [EmpProfQualIdetails] UNIQUEIDENTIFIER NOT NULL,
    [EmployeeId]          UNIQUEIDENTIFIER NOT NULL,
    [QualifcationId]      UNIQUEIDENTIFIER NOT NULL,
    [IsActive]            BIT              NOT NULL,
    [IsDeleted]           BIT              NOT NULL,
    [CreatedBy]           UNIQUEIDENTIFIER NULL,
    [CreatedDate]         DATETIME         NOT NULL,
    [ModifiedBy]          UNIQUEIDENTIFIER NULL,
    [ModifiedDate]        DATETIME         NULL,
    [Status]              VARCHAR (10)     DEFAULT ('INC') NULL,
    [StatusMessage]       NVARCHAR (255)   NULL,
    CONSTRAINT [PK_EmpProfQualIdetails] PRIMARY KEY CLUSTERED ([EmployeeId] ASC, [QualifcationId] ASC)
);

