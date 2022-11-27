﻿CREATE TABLE [dbo].[Lookup305] (
    [ID]          INT           IDENTITY (1, 1) NOT NULL,
    [Name]        VARCHAR (30)  NOT NULL,
    [Description] VARCHAR (200) NULL,
    CONSTRAINT [PK_Lookup305] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [UQ_Lookup305] UNIQUE NONCLUSTERED ([Name] ASC)
);

