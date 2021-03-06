USE [SPortalDb]
GO
/****** Object:  StoredProcedure [dbo].[UpdateUser]    Script Date: 2013-10-21 09:43:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateUser]
@Username VARCHAR(50),
@Email VARCHAR(50),
@Name VARCHAR(50),
@Surname VARCHAR(50),
@DOB DATE,
@Picture VARCHAR(50),
@Institution VARCHAR(50),
@Rating INT
AS
DECLARE @InstitutionID INT
BEGIN
	SELECT @InstitutionID = InstitutionID FROM [Institution] WHERE Institution = @Institution

	UPDATE Users
	SET Email = @Email,
	Name = @Name,
	Surname = @Surname,
	DOB = @DOB,
	Picture = @Picture,
	InstitutionID = @InstitutionID,
	Rating = @Rating	
	WHERE Username = @Username
END
GO