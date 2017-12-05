-- GetCountryRegions

SELECT
    [Identifier],
    [Name]
FROM dbo.Region
WHERE [CountryCode] = @countryCode
