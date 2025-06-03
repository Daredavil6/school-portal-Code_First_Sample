CREATE PROCEDURE [dbo].[sp_InsertCountryMaster]
    @Id UNIQUEIDENTIFIER,
    @Name VARCHAR(100),
    @IsActive BIT,
    @IsDeleted BIT,
    @CreatedBy UNIQUEIDENTIFIER,
    @CreatedDate DATETIME,
    @ModifiedBy UNIQUEIDENTIFIER,
    @ModifiedDate DATETIME,
    @Status VARCHAR(10),
    @StatusMessage VARCHAR(250)
AS
BEGIN
    SET NOCOUNT ON;

    -- Check if Id already exists
    IF EXISTS (SELECT 1 FROM CountryMaster WHERE Id = @Id)
    BEGIN
        RAISERROR('Country with the same ID already exists.', 16, 1);
        RETURN;
    END

    -- Check for duplicate Name
    IF EXISTS (SELECT 1 FROM CountryMaster WHERE Name = @Name AND IsDeleted = 0)
    BEGIN
        RAISERROR('Country name already exists.', 16, 1);
        RETURN;
    END

    -- Validate CreatedBy and ModifiedBy exist
    IF NOT EXISTS (SELECT 1 FROM UserDetails WHERE Id = @CreatedBy)
    BEGIN
        RAISERROR('CreatedBy user does not exist.', 16, 1);
        RETURN;
    END

    IF NOT EXISTS (SELECT 1 FROM UserDetails WHERE Id = @ModifiedBy)
    BEGIN
        RAISERROR('ModifiedBy user does not exist.', 16, 1);
        RETURN;
    END

    INSERT INTO CountryMaster (
        Id, Name, IsActive, IsDeleted,
        CreatedBy, CreatedDate, ModifiedBy, ModifiedDate,
        Status, StatusMessage
    )
    VALUES (
        @Id, @Name, @IsActive, @IsDeleted,
        @CreatedBy, @CreatedDate, @ModifiedBy, @ModifiedDate,
        @Status, @StatusMessage
    );
END;
