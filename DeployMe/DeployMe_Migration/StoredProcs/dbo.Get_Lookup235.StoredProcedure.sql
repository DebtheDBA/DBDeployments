SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Get_Lookup235]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Get_Lookup235] AS' 
END
GO

	ALTER   PROC [dbo].[Get_Lookup235]
	AS
	BEGIN

	SELECT *
	FROM dbo.Lookup235

	END
	
GO
ALTER AUTHORIZATION ON [dbo].[Get_Lookup235] TO  SCHEMA OWNER 
GO
ALTER AUTHORIZATION ON [dbo].[Get_Lookup235] TO  SCHEMA OWNER 
GO
