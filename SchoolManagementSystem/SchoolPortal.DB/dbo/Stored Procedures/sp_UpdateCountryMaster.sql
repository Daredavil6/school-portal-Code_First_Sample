CREATE PROCEDURE [dbo].[sp_UpdateCountryMaster]
    @Id UNIQUEIDENTIFIER,
    @Name VARCHAR(100),
    @IsActive BIT,
    @IsDeleted BIT,
    @ModifiedBy UNIQUEIDENTIFIER,
    @ModifiedDate DATETIME,
    @Status VARCHAR(10),
    @StatusMessage VARCHAR(250)
AS
BEGIN
    SET NOCOUNT ON;

    -- Check if Country exists
    IF NOT EXISTS (SELECT 1 FROM CountryMaster WHERE Id = @Id)
    BEGIN
        RAISERROR('Country not found.', 16, 1);
        RETURN;
    END

    -- Check if ModifiedBy exists
    IF NOT EXISTS (SELECT 1 FROM UserDetails WHERE Id = @ModifiedBy)
    BEGIN
        RAISERROR('ModifiedBy user does not exist.', 16, 1);
        RETURN;
    END

    -- Check for duplicate Name
    IF EXISTS (SELECT 1 FROM CountryMaster WHERE Name = @Name AND Id != @Id AND IsDeleted = 0)
    BEGIN
        RAISERROR('Another country with the same name already exists.', 16, 1);
        RETURN;
    END

    UPDATE CountryMaster
    SET 
        Name = @Name,
        IsActive = @IsActive,
        IsDeleted = @IsDeleted,
        ModifiedBy = @ModifiedBy,
        ModifiedDate = @ModifiedDate,
        Status = @Status,
        StatusMessage = @StatusMessage
    WHERE Id = @Id;
END;
