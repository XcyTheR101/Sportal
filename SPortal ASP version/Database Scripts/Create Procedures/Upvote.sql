USE [SPortalDb]
GO
/****** Object:  StoredProcedure [dbo].[Upvote]    Script Date: 2013-10-21 02:57:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Upvote]
@Type int,
@ID INT,
@Username VARCHAR(50)
AS
DECLARE @UserID int
BEGIN
	SELECT @UserID = UserID
	FROM Users
	WHERE Username = @Username

	IF (@Type=1)
		BEGIN
			IF ((SELECT count(UserID) FROM TopicVotes WHERE UserID = @UserID AND TopicID = @ID) = 0)
			BEGIN
				INSERT INTO TopicVotes(TopicID, UserID, Downvote, Upvote)
					VALUES (@ID, @UserID, 0, 0)
			END
			UPDATE TopicVotes
			SET Upvote = 1, Downvote = 0
			WHERE UserID = @UserID
			AND TopicID = @ID
		END
	ELSE
		BEGIN
			IF ((SELECT count(UserID) FROM PostVotes WHERE UserID = @UserID AND PostID = @ID) = 0)
			BEGIN
				INSERT INTO PostVotes(PostID, UserID, Downvote, Upvote)
					VALUES (@ID, @UserID, 0, 0)
			END
			UPDATE PostVotes
			SET Upvote = 1, Downvote = 0
			WHERE UserID = @UserID
			AND PostID = @ID
		END
END

GO