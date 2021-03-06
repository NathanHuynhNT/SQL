﻿IF OBJECT_ID('[dbo].[Delete]') IS NOT NULL
BEGIN
	DROP PROCEDURE [dbo].[Delete]
END
GO

SET ANSI_NULLS ON;
GO
SET QUOTED_IDENTIFIER ON;
GO

CREATE PROCEDURE [dbo].[Delete]
	@Id	INT
AS BEGIN
	SET NOCOUNT ON;

	BEGIN TRY
		DELETE FROM [Table] WHERE Id = @Id;
	END TRY
	BEGIN CATCH
		RAISERROR('Error.', 16, 1);
	END CATCH
END
GO