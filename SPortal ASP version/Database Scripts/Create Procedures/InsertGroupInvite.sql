USE [SPortalDb]
GO
/****** Object:  StoredProcedure [dbo].[InsertGroupInvite]    Script Date: 2013-10-20 11:58:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertGroupInvite]
@Name VARCHAR(30),
@Username VARCHAR(50)
AS
DECLARE @UserID INT
DECLARE @GroupID INT
BEGIN
	SELECT @GroupID = TopicID FROM Topic WHERE TopicName = @Name
	SELECT @UserID = UserID FROM Users WHERE Username = @Username
	IF (@GroupID = null AND NOT @UserID = null)
	BEGIN
		INSERT INTO GroupInvites (GroupID, UserID) VALUES (@GroupID, @UserID)
	END
END
GO