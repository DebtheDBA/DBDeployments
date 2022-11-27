IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = object_id (N'deploy.MigrationLog'))
CREATE TABLE deploy.MigrationLog (
	MigrationLogID	int IDENTITY(1,1) NOT NULL
		CONSTRAINT PK_MigrationLog PRIMARY KEY CLUSTERED,
	FileRun	varchar(128) NOT NULL,
	LogDatetime datetime NOT NULL
		CONSTRAINT DF_MigrationLog_TimeRunStarted DEFAULT GETDATE(),
	LogAction CHAR(5) NOT NULL -- Values = 'START', 'END'
)
GO