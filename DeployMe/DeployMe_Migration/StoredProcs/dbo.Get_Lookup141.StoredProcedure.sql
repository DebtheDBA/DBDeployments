SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Get_Lookup141]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Get_Lookup141] AS' 
END
GO

	ALTER   PROC [dbo].[Get_Lookup141]
	AS
	BEGIN

	SELECT *
	FROM dbo.Lookup141

	END
	
GO
ALTER AUTHORIZATION ON [dbo].[Get_Lookup141] TO  SCHEMA OWNER 
GO
ALTER AUTHORIZATION ON [dbo].[Get_Lookup141] TO  SCHEMA OWNER 
GO
