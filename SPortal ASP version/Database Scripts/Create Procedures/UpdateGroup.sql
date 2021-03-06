USE [SPortalDb]
GO
/****** Object:  StoredProcedure [dbo].[UpdateGroup]    Script Date: 2013-10-21 12:18:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateGroup]
@Name VARCHAR(30),
@Description VARCHAR(300),
@Username VARCHAR(50),
@Limited SMALLINT
AS
DECLARE @UserID INT;
DECLARE @GroupID INT;
BEGIN
	SELECT @UserID = UserID FROM Users WHERE Username = @Username
	
	IF ((SELECT count(TopicName) FROM Topic WHERE TopicName = @Name) = 0)
	BEGIN
		UPDATE Topic
		SET TopicName = @Name
		WHERE TopicName = @Name;
	END

	UPDATE Topic
	SET	TopicDescription = @Description
	WHERE TopicName = @Name
	
	SELECT @GroupID = TopicID FROM Topic WHERE TopicName = @Name; 

	UPDATE [Group]
	SET Limited = @Limited
	WHERE GroupID = @GroupID

	UPDATE [UserGroup]
	SET UserID = @UserID
	WHERE GroupID = @GroupID;
END
GO