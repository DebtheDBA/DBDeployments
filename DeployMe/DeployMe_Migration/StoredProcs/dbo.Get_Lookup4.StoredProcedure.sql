SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Get_Lookup4]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Get_Lookup4] AS' 
END
GO

	ALTER   PROC [dbo].[Get_Lookup4]
	AS
	BEGIN

	SELECT *
	FROM dbo.Lookup4

	END
	
GO
ALTER AUTHORIZATION ON [dbo].[Get_Lookup4] TO  SCHEMA OWNER 
GO
ALTER AUTHORIZATION ON [dbo].[Get_Lookup4] TO  SCHEMA OWNER 
GO
