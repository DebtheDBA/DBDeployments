IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'DemoSetup')
EXEC('CREATE SCHEMA DemoSetup')
GO