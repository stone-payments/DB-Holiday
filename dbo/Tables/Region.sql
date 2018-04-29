CREATE TABLE [dbo].[Region] (
    [Identifier]  VARCHAR (12) NOT NULL,
    [CountryCode] CHAR (3)     NOT NULL,
    [Name]        VARCHAR (90) NOT NULL,
    CONSTRAINT [PK_Region_Identifier_CountryCode] PRIMARY KEY CLUSTERED ([Identifier] ASC, [CountryCode] ASC),
    CONSTRAINT [FK_Region_CountryCode_Code] FOREIGN KEY ([CountryCode]) REFERENCES [dbo].[Country] ([Code]),
    CONSTRAINT [UC_Region_Identifier_CountryCode] UNIQUE NONCLUSTERED ([Identifier] ASC, [CountryCode] ASC)
);

