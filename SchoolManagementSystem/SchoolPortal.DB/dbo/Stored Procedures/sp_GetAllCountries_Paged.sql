-- Page 1, 10 records per page
--EXEC sp_GetAllCountries_Paged @PageNumber = 1, @PageSize = 10;

-- Page 2, 5 records per page
--EXEC sp_GetAllCountries_Paged @PageNumber = 2, @PageSize = 5;
CREATE PROCEDURE [dbo].[sp_GetAllCountries_Paged]
    @PageNumber INT = 1,
    @PageSize INT = 10
AS
BEGIN
    SET NOCOUNT ON;

    -- Calculate how many rows to skip
    DECLARE @Offset INT = (@PageNumber - 1) * @PageSize;

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
    ORDER BY Name
    OFFSET @Offset ROWS
    FETCH NEXT @PageSize ROWS ONLY;
END;
