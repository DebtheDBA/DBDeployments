SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Get_Lookup71]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Get_Lookup71] AS' 
END
GO

	ALTER   PROC [dbo].[Get_Lookup71]
	AS
	BEGIN

	SELECT *
	FROM dbo.Lookup71

	END
	
GO
ALTER AUTHORIZATION ON [dbo].[Get_Lookup71] TO  SCHEMA OWNER 
GO
ALTER AUTHORIZATION ON [dbo].[Get_Lookup71] TO  SCHEMA OWNER 
GO
