CREATE TABLE [dbo].[RouteDetails] (
    [Id]                   UNIQUEIDENTIFIER NOT NULL,
    [RouteId]              UNIQUEIDENTIFIER NOT NULL,
    [VehicleId]            UNIQUEIDENTIFIER NOT NULL,
    [DriverId]             UNIQUEIDENTIFIER NOT NULL,
    [AttendantId]          UNIQUEIDENTIFIER NOT NULL,
    [RouteDetailCleanerId] UNIQUEIDENTIFIER NOT NULL,
    [CompanyId]            UNIQUEIDENTIFIER NOT NULL,
    [SchoolId]             UNIQUEIDENTIFIER NOT NULL,
    [IsActive]             BIT              DEFAULT ((1)) NOT NULL,
    [IsDeleted]            BIT              DEFAULT ((0)) NOT NULL,
    [CreatedBy]            UNIQUEIDENTIFIER NULL,
    [CreatedDate]          DATETIME         DEFAULT (getdate()) NOT NULL,
    [ModifiedBy]           UNIQUEIDENTIFIER NULL,
    [ModifiedDate]         DATETIME         NULL,
    [Status]               VARCHAR (10)     DEFAULT ('INC') NULL,
    [StatusMessage]        NVARCHAR (255)   NULL,
    CONSTRAINT [PK_RouteDetails] PRIMARY KEY CLUSTERED ([Id] ASC)
);

