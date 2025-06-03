CREATE PROCEDURE [dbo].[sp_GetAllCountries]
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        Id,
        Name,
        IsActive,
        IsDeleted,
        CreatedBy,
        CreatedDate,
        ModifiedBy,
        ModifiedDate,
        Status,
        StatusMessage
    FROM CountryMaster
    WHERE IsDeleted = 0
    ORDER BY Name;
END;
