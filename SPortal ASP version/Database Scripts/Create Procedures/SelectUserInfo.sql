USE [SPortalDb]
GO
/****** Object:  StoredProcedure [dbo].[SelectUserInfo]    Script Date: 10/12/2013 13:18:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SelectUserInfo]
@Username VARCHAR(30)
AS
SELECT Username, Email, Name, Surname, DOB, Picture, Institution, Rating, JoinDate, U.UserTypeID AS [UserType]
FROM Users U INNER JOIN Institution I
	ON U.InstitutionID = I.InstitutionID
WHERE Username = @Username
GO