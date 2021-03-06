USE [SPortalDb]
GO
/****** Object:  StoredProcedure [dbo].[CreateInstitution]    Script Date: 2013-10-21 07:46:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CreateInstitution]
@Name VARCHAR(30)
AS
BEGIN
	IF ((SELECT count(Institution) FROM Institution WHERE Institution = @Name) = 0)
	BEGIN
		INSERT INTO Institution (Institution) VALUES (@Name)
	END
END
GO