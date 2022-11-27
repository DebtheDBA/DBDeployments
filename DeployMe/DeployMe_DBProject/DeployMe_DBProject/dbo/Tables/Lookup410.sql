﻿CREATE TABLE [dbo].[Lookup410] (
    [ID]          INT           IDENTITY (1, 1) NOT NULL,
    [Name]        VARCHAR (30)  NOT NULL,
    [Description] VARCHAR (200) NULL,
    CONSTRAINT [PK_Lookup410] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [UQ_Lookup410] UNIQUE NONCLUSTERED ([Name] ASC)
);

