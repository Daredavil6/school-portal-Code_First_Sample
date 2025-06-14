﻿CREATE TABLE [dbo].[EmpSalaryMasterHistory] (
    [Id]                      UNIQUEIDENTIFIER NOT NULL,
    [EmpSalaryMasterId]       UNIQUEIDENTIFIER NOT NULL,
    [EmployeeId]              UNIQUEIDENTIFIER NOT NULL,
    [Month]                   VARCHAR (4)      NOT NULL,
    [Year]                    VARCHAR (4)      NOT NULL,
    [Session]                 UNIQUEIDENTIFIER NOT NULL,
    [BatchPrintDate]          DATETIME         NOT NULL,
    [BasicSalary]             DECIMAL (18, 2)  NULL,
    [Allowances]              DECIMAL (18, 2)  NULL,
    [Deductions]              DECIMAL (18, 2)  NULL,
    [NetSalary]               DECIMAL (18, 2)  NULL,
    [TotalDays]               UNIQUEIDENTIFIER NOT NULL,
    [PresentDays]             DECIMAL (18, 1)  NULL,
    [AbsentDays]              DECIMAL (18, 1)  NULL,
    [LeaveDays]               DECIMAL (18, 1)  NULL,
    [LeaveDescription]        VARCHAR (150)    NULL,
    [LeaveBalanceDescription] VARCHAR (150)    NULL,
    [PerDaySalary]            DECIMAL (18, 2)  NULL,
    [DepartmentId]            UNIQUEIDENTIFIER NOT NULL,
    [DesignationId]           UNIQUEIDENTIFIER NOT NULL,
    [GradeId]                 UNIQUEIDENTIFIER NOT NULL,
    [CompanyId]               UNIQUEIDENTIFIER NOT NULL,
    [SchoolId]                UNIQUEIDENTIFIER NOT NULL,
    [IsActive]                BIT              NOT NULL,
    [IsDeleted]               BIT              NOT NULL,
    [CreatedBy]               UNIQUEIDENTIFIER NULL,
    [CreatedDate]             DATETIME         NOT NULL,
    [ModifiedBy]              UNIQUEIDENTIFIER NULL,
    [ModifiedDate]            DATETIME         NULL,
    [Status]                  VARCHAR (10)     DEFAULT ('INC') NULL,
    [StatusMessage]           NVARCHAR (255)   NULL,
    CONSTRAINT [PK_EmpSalaryMasterHistory] PRIMARY KEY CLUSTERED ([Id] ASC)
);

