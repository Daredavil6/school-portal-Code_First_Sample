CREATE PROCEDURE [dbo].[sp_DeleteCountryMaster]
    @Id UNIQUEIDENTIFIER,
    @ModifiedBy UNIQUEIDENTIFIER,
    @ModifiedDate DATETIME
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

    UPDATE CountryMaster
    SET 
        IsDeleted = 1,
        ModifiedBy = @ModifiedBy,
        ModifiedDate = @ModifiedDate
    WHERE Id = @Id;
END;
