CREATE   PROCEDURE DummyTableAndProcCreation
	@NumberToCreate INT = 100
AS
BEGIN

DECLARE @counter INT = 0,
	@StartNumber INT = 0,
	@TableSQL NVARCHAR(MAX),
	@ProcSQL NVARCHAR(MAX),
	@TableName NVARCHAR(128),
	@ProcName NVARCHAR(128)

BEGIN TRY

IF EXISTS (SELECT * FROM sys.objects WHERE name LIKE 'Lookup%')
	SELECT @StartNumber =
			MAX(TRY_CONVERT(INT, REPLACE(name, 'Lookup', '')))
	FROM sys.objects 
	WHERE name LIKE 'Lookup%'

WHILE @counter < @NumberToCreate
BEGIN

	SELECT @counter = @counter + 1,
		@StartNumber = @StartNumber + 1
	SELECT @TableName = 'Lookup' + CONVERT(VARCHAR(10), @StartNumber),
		@ProcName = 'Get_Lookup' + CONVERT(VARCHAR(10), @StartNumber)

	SELECT @TableSQL = '
	CREATE TABLE dbo.' + @TableName + '(
		ID int IDENTITY(1,1) NOT NULL
			CONSTRAINT PK_' + @TableName + ' PRIMARY KEY CLUSTERED,
		Name varchar(30) NOT NULL
			CONSTRAINT UQ_' + @TableName + ' UNIQUE,
		Description varchar(200) NULL
	)'

	EXEC sp_executesql @TableSQL

	SELECT @ProcSQL = '
	CREATE OR ALTER PROC dbo.' + @ProcName + '
	AS
	BEGIN

	SELECT *
	FROM dbo.' + @TableName + '

	END
	'
	
	EXEC sp_executesql @ProcSQL

END

END TRY
BEGIN CATCH
	
	SELECT @TableName, @TableSQL, 
		@ProcName, @ProcSQL,
		ERROR_NUMBER(),
		ERROR_MESSAGE(),
		ERROR_LINE(),
		ERROR_SEVERITY(),
		ERROR_STATE()

END CATCH

END
