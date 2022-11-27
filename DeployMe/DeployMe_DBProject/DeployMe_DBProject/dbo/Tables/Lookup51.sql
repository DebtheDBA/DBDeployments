﻿CREATE TABLE [dbo].[Lookup51] (
    [ID]          INT           IDENTITY (1, 1) NOT NULL,
    [Name]        VARCHAR (30)  NOT NULL,
    [Description] VARCHAR (200) NULL,
    CONSTRAINT [PK_Lookup51] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [UQ_Lookup51] UNIQUE NONCLUSTERED ([Name] ASC)
);

