USE [SPortalDb]
GO
/****** Object:  StoredProcedure [dbo].[SelectUpvotes]    Script Date: 2013-10-20 06:30:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectUpvotes]
@Type INT,
@ID INT
AS
BEGIN
	IF (@Type=1)
		BEGIN
			SELECT count(Upvote) AS [Upvotes] FROM TopicVotes WHERE TopicID = @ID AND Upvote = 1;
		END
	ELSE
		BEGIN
			SELECT count(Upvote) AS [Upvotes] FROM PostVotes WHERE PostID = @ID AND Upvote = 1;
		END
END
GO
