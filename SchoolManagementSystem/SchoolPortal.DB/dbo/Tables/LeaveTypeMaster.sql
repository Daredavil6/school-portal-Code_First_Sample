CREATE TABLE [dbo].[LeaveTypeMaster] (
    [Id]                   UNIQUEIDENTIFIER NOT NULL,
    [LeaveTypeCode]        VARCHAR (10)     NULL,
    [LeaveTypeDescription] VARCHAR (150)    NULL,
    [ApplicableGender]     VARCHAR (10)     NULL,
    [IsSpecialLeave]       BIT              NOT NULL,
    [IsEncashable]         BIT              NOT NULL,
    [IsCarryForward]       BIT              NOT NULL,
    [LeaveTypeIsActive]    BIT              NOT NULL,
    [LeaveTypeCompanyId]   UNIQUEIDENTIFIER NOT NULL,
    [LeaveTypeSchoolId]    UNIQUEIDENTIFIER NOT NULL,
    [IsActive]             BIT              DEFAULT ((1)) NOT NULL,
    [IsDeleted]            BIT              DEFAULT ((0)) NOT NULL,
    [CreatedBy]            UNIQUEIDENTIFIER NULL,
    [CreatedDate]          DATETIME         DEFAULT (getdate()) NOT NULL,
    [ModifiedBy]           UNIQUEIDENTIFIER NULL,
    [ModifiedDate]         DATETIME         NULL,
    [Status]               VARCHAR (10)     DEFAULT ('INC') NULL,
    [StatusMessage]        NVARCHAR (255)   NULL,
    CONSTRAINT [PK_LeaveTypeMaster] PRIMARY KEY CLUSTERED ([Id] ASC)
);

