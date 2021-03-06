USE [SPortalDb]
GO
/****** Object:  StoredProcedure [dbo].[CreateGroup]    Script Date: 2013-10-21 02:20:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreateGroup]
@GroupName VARCHAR(30),
@Description VARCHAR(300),
@Username VARCHAR(50),
@Limited SMALLINT
AS
DECLARE @UserID INT;
DECLARE @TopicID INT;
BEGIN
	SET @UserID = (SELECT UserID FROM Users WHERE Username = @Username)
	
	INSERT INTO Topic (TopicName,TopicDescription, TopicBody ,CreatedBy, TopicTypeID, CreationDate) VALUES (@GroupName, @Description,@Description,@UserID, 3, CONVERT(DATE, GETDATE()))
	
	SET @TopicID = SCOPE_IDENTITY();

	INSERT INTO [Group] (GroupID, Limited) VALUES (@TopicID,@Limited)
END
GO