CREATE TABLE [dbo].[HolidayMaster] (
    [Id]                       UNIQUEIDENTIFIER NOT NULL,
    [HolidayName]              VARCHAR (50)     NULL,
    [HolidayDescription]       VARCHAR (150)    NULL,
    [HolidayTypeId]            UNIQUEIDENTIFIER NOT NULL,
    [HolidayFromDate]          DATETIME         NOT NULL,
    [HolidayToDate]            DATETIME         NOT NULL,
    [HolidayYear]              UNIQUEIDENTIFIER NOT NULL,
    [HolidayIsActive]          BIT              NULL,
    [HolidayCompanyId]         UNIQUEIDENTIFIER NOT NULL,
    [HolidaySchoolId]          UNIQUEIDENTIFIER NOT NULL,
    [HolidayIsStaffApplicable] BIT              NULL,
    [SessionId]                UNIQUEIDENTIFIER NOT NULL,
    [IsActive]                 BIT              DEFAULT ((1)) NOT NULL,
    [IsDeleted]                BIT              DEFAULT ((0)) NOT NULL,
    [CreatedBy]                UNIQUEIDENTIFIER NULL,
    [CreatedDate]              DATETIME         DEFAULT (getdate()) NOT NULL,
    [ModifiedBy]               UNIQUEIDENTIFIER NULL,
    [ModifiedDate]             DATETIME         NULL,
    [Status]                   VARCHAR (10)     DEFAULT ('INC') NULL,
    [StatusMessage]            NVARCHAR (255)   NULL,
    CONSTRAINT [PK_HolidayMaster] PRIMARY KEY CLUSTERED ([Id] ASC)
);

