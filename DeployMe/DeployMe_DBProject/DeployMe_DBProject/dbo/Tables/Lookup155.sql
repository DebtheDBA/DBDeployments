﻿CREATE TABLE [dbo].[Lookup155] (
    [ID]          INT           IDENTITY (1, 1) NOT NULL,
    [Name]        VARCHAR (30)  NOT NULL,
    [Description] VARCHAR (200) NULL,
    CONSTRAINT [PK_Lookup155] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [UQ_Lookup155] UNIQUE NONCLUSTERED ([Name] ASC)
);

