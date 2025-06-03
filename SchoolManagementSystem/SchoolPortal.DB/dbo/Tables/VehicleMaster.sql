CREATE TABLE [dbo].[VehicleMaster] (
    [Id]                        UNIQUEIDENTIFIER NOT NULL,
    [VehicleNumber]             VARCHAR (50)     NULL,
    [Model]                     VARCHAR (50)     NULL,
    [Make]                      VARCHAR (50)     NULL,
    [VehicleType]               VARCHAR (50)     NOT NULL,
    [VehicleRegistrationNumber] VARCHAR (50)     NULL,
    [InsuranceCompany]          VARCHAR (50)     NULL,
    [InsurancePremium]          DECIMAL (18, 2)  NULL,
    [SeatingCapacity]           INT              NULL,
    [CompanyId]                 UNIQUEIDENTIFIER NOT NULL,
    [SchoolId]                  UNIQUEIDENTIFIER NOT NULL,
    [IsActive]                  BIT              DEFAULT ((1)) NOT NULL,
    [IsDeleted]                 BIT              DEFAULT ((0)) NOT NULL,
    [CreatedBy]                 UNIQUEIDENTIFIER NULL,
    [CreatedDate]               DATETIME         DEFAULT (getdate()) NOT NULL,
    [ModifiedBy]                UNIQUEIDENTIFIER NULL,
    [ModifiedDate]              DATETIME         NULL,
    [Status]                    VARCHAR (10)     DEFAULT ('INC') NULL,
    [StatusMessage]             NVARCHAR (255)   NULL,
    CONSTRAINT [PK_Veh] PRIMARY KEY CLUSTERED ([Id] ASC)
);

