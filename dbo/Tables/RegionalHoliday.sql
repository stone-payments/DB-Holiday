CREATE TABLE [dbo].[RegionalHoliday] (
    [Day]              TINYINT      NOT NULL,
    [Month]            TINYINT      NOT NULL,
    [CountryCode]      CHAR (3)     NOT NULL,
    [RegionIdentifier] VARCHAR (12) NOT NULL,
    [Name]             VARCHAR (90) NOT NULL,
    CONSTRAINT [PK_RegionalHoliday_Day_Month_Country] PRIMARY KEY CLUSTERED ([Day] ASC, [Month] ASC, [RegionIdentifier] ASC),
    CONSTRAINT [CHK_RegionalHoliday_Day] CHECK ([Day]>=(1) AND [Day]<=(31)),
    CONSTRAINT [CHK_RegionalHoliday_Month] CHECK ([Month]>=(1) AND [Month]<=(12)),
    CONSTRAINT [FK_RegionalHoliday_RegionIdentifier_Identifier] FOREIGN KEY ([RegionIdentifier], [CountryCode]) REFERENCES [dbo].[Region] ([Identifier], [CountryCode]),
    CONSTRAINT [UC_RegionalHoliday_Day_Month_Country_Region] UNIQUE NONCLUSTERED ([Day] ASC, [Month] ASC, [CountryCode] ASC, [RegionIdentifier] ASC)
);

