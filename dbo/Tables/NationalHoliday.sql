CREATE TABLE [dbo].[NationalHoliday] (
    [Day]         TINYINT      NOT NULL,
    [Month]       TINYINT      NOT NULL,
    [CountryCode] CHAR (3)     NOT NULL,
    [Name]        VARCHAR (90) NOT NULL,
    [LocalName]   VARCHAR (90) NOT NULL,
    CONSTRAINT [PK_NationalHoliday_Day_Month_Country] PRIMARY KEY CLUSTERED ([Day] ASC, [Month] ASC, [CountryCode] ASC),
    CONSTRAINT [CHK_NationalHoliday_Day] CHECK ([Day]>=(1) AND [Day]<=(31)),
    CONSTRAINT [CHK_NationalHoliday_Month] CHECK ([Month]>=(1) AND [Month]<=(12)),
    CONSTRAINT [FK_NationalHoliday_CountryCode_Code] FOREIGN KEY ([CountryCode]) REFERENCES [dbo].[Country] ([Code]),
    CONSTRAINT [UC_NationalHoliday_Day_Month_Country] UNIQUE NONCLUSTERED ([Day] ASC, [Month] ASC, [CountryCode] ASC)
);

