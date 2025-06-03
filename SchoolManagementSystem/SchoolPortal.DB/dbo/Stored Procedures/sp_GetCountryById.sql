CREATE PROCEDURE [dbo].[sp_GetCountryById]
    @Id UNIQUEIDENTIFIER
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
    WHERE Id = @Id AND IsDeleted = 0;
END;
