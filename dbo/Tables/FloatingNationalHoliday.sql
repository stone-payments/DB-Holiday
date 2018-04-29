CREATE TABLE [dbo].[FloatingNationalHoliday] (
    [Day]         TINYINT      NOT NULL,
    [Month]       TINYINT      NOT NULL,
    [Year]        SMALLINT     NOT NULL,
    [HolidayDate] DATE         NOT NULL,
    [CountryCode] CHAR (3)     NOT NULL,
    [Name]        VARCHAR (90) NOT NULL,
    [LocalName]   VARCHAR (90) NOT NULL,
    CONSTRAINT [PK_FloatingNationalHoliday_HolidayDate_Country] PRIMARY KEY CLUSTERED ([HolidayDate] ASC, [CountryCode] ASC),
    CONSTRAINT [CHK_FloatingNationalHoliday_Day] CHECK ([Day]>=(1) AND [Day]<=(31)),
    CONSTRAINT [CHK_FloatingNationalHoliday_Month] CHECK ([Month]>=(1) AND [Month]<=(12)),
    CONSTRAINT [CHK_FloatingNationalHoliday_Year] CHECK ([Year]>=(1900) AND [Year]<=(2100)),
    CONSTRAINT [FK_FloatingNationalHoliday_CountryCode_Code] FOREIGN KEY ([CountryCode]) REFERENCES [dbo].[Country] ([Code]),
    CONSTRAINT [UC_FloatingNationalHoliday_HolidayDate_Country] UNIQUE NONCLUSTERED ([HolidayDate] ASC, [CountryCode] ASC)
);

