-- GetYearlyRegionalHolidays

SELECT
    CAST(CONCAT(@year, '-', [Month], '-', [Day]) AS DATE) AS [HolidayDate],
    [Name]
FROM dbo.RegionalHoliday
WHERE
    [CountryCode] = @countryCode
    AND [RegionIdentifier] = @regionCode