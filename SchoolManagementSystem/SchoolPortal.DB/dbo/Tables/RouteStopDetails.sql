CREATE TABLE [dbo].[RouteStopDetails] (
    [Id]               UNIQUEIDENTIFIER NOT NULL,
    [RouteMasterId]    UNIQUEIDENTIFIER NOT NULL,
    [RouteDetailId]    UNIQUEIDENTIFIER NOT NULL,
    [LocationId]       UNIQUEIDENTIFIER NOT NULL,
    [StopNumber]       UNIQUEIDENTIFIER NOT NULL,
    [PickUpTime]       VARCHAR (50)     NOT NULL,
    [DropTime]         VARCHAR (50)     NOT NULL,
    [OneWayMonthlyFee] DECIMAL (18, 2)  NULL,
    [TwoWayMonthlyFee] DECIMAL (18, 2)  NULL,
    [CompanyId]        UNIQUEIDENTIFIER NOT NULL,
    [SchoolId]         UNIQUEIDENTIFIER NOT NULL,
    [IsActive]         BIT              DEFAULT ((1)) NOT NULL,
    [IsDeleted]        BIT              DEFAULT ((0)) NOT NULL,
    [CreatedBy]        UNIQUEIDENTIFIER NULL,
    [CreatedDate]      DATETIME         DEFAULT (getdate()) NOT NULL,
    [ModifiedBy]       UNIQUEIDENTIFIER NULL,
    [ModifiedDate]     DATETIME         NULL,
    [Status]           VARCHAR (10)     DEFAULT ('INC') NULL,
    [StatusMessage]    NVARCHAR (255)   NULL,
    CONSTRAINT [PK_RouteStopDetails] PRIMARY KEY CLUSTERED ([Id] ASC)
);

