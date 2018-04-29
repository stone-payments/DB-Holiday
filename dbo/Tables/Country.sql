CREATE TABLE [dbo].[Country] (
    [Code]       CHAR (3)     NOT NULL,
    [Alpha2Code] CHAR (2)     NOT NULL,
    [Alpha3Code] CHAR (3)     NOT NULL,
    [Name]       VARCHAR (60) NOT NULL,
    [LocalName]  VARCHAR (60) NOT NULL,
    CONSTRAINT [PK_Country_Code] PRIMARY KEY CLUSTERED ([Code] ASC),
    CONSTRAINT [UC_Country_Code] UNIQUE NONCLUSTERED ([Code] ASC)
);

