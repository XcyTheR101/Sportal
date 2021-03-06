USE [SPortalDb]
GO
/****** Object:  StoredProcedure [dbo].[SelectUsersByInstitution]    Script Date: 2013-10-20 02:46:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SelectUsersByInstitution]
@Institution VARCHAR(50)
AS

SELECT Username
	FROM Users 
		WHERE InstitutionID = (SELECT InstitutionID FROM Institution WHERE Institution LIKE @Institution)
		GO