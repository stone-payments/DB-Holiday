-- GetYearlyNationalHolidays

SELECT
    CAST(CONCAT(@year, '-', [Month], '-', [Day]) AS DATE) AS [HolidayDate],
    [Name],
    [LocalName]
FROM dbo.NationalHoliday
WHERE
    [CountryCode] = @countryCode

UNION

SELECT
    [HolidayDate],
    [Name],
    [LocalName]
FROM dbo.FloatingNationalHoliday
WHERE 
    [CountryCode] = @countryCode
    AND [Year] = @year
