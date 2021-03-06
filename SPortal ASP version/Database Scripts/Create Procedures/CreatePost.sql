USE [SPortalDb]
GO
/****** Object:  StoredProcedure [dbo].[CreatePost]    Script Date: 2013-10-20 02:13:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[CreatePost]
@PostTypeID INT,
@Text VARCHAR(MAX),
@Username VARCHAR(50),
@TopicID INT
AS
DECLARE @UserID INT;
DECLARE @PostID INT;
SET @UserID = 0;

SELECT @UserID = [UserID]
	FROM Users
		WHERE Username = @Username
		
IF @UserID > 0
BEGIN

INSERT INTO Post ([Text], UserID, SubmissionDate, PostTypeID, CommentID)
	VALUES (@Text, @UserID, CONVERT(DATETIME2,GETDATE()), @PostTypeID, @TopicID);
	
SET @PostID = SCOPE_IDENTITY();

INSERT INTO PostUsers(PostID, UserID)
	VALUES (@PostID, @UserID);

END
GO