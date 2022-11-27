﻿CREATE TABLE [dbo].[Lookup25] (
    [ID]          INT           IDENTITY (1, 1) NOT NULL,
    [Name]        VARCHAR (30)  NOT NULL,
    [Description] VARCHAR (200) NULL,
    CONSTRAINT [PK_Lookup25] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [UQ_Lookup25] UNIQUE NONCLUSTERED ([Name] ASC)
);

