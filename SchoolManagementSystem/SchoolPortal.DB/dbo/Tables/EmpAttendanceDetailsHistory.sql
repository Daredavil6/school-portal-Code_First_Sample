CREATE TABLE [dbo].[EmpAttendanceDetailsHistory] (
    [Id]            UNIQUEIDENTIFIER NOT NULL,
    [EmployeeId]    UNIQUEIDENTIFIER NOT NULL,
    [Month]         INT              NULL,
    [Year]          INT              NULL,
    [Date]          DATETIME         NOT NULL,
    [Status]        BIT              NOT NULL,
    [LeaveId]       UNIQUEIDENTIFIER NOT NULL,
    [IsHalfDay]     BIT              NULL,
    [Time]          VARCHAR (50)     NULL,
    [IsActive]      BIT              NOT NULL,
    [IsDeleted]     BIT              NOT NULL,
    [CompanyId]     UNIQUEIDENTIFIER NOT NULL,
    [SchoolId]      UNIQUEIDENTIFIER NOT NULL,
    [CreatedBy]     UNIQUEIDENTIFIER NULL,
    [CreatedDate]   DATETIME         NOT NULL,
    [ModifiedBy]    UNIQUEIDENTIFIER NULL,
    [ModifiedDate]  DATETIME         NULL,
    [StatusMessage] NVARCHAR (255)   NULL,
    CONSTRAINT [PK_EMPAttendanceDetailsHistory] PRIMARY KEY CLUSTERED ([Id] ASC)
);

