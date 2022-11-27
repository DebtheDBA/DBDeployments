IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'Deploy')
EXEC('CREATE SCHEMA Deploy')
GO