USE [SPortalDb]
GO
/****** Object:  StoredProcedure [dbo].[SelectUpvotes]    Script Date: 2013-10-20 01:25:14 PM ******/
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
			SELECT count(Upvote) AS [Upvotes] FROM TopicVotes WHERE TopicID = @ID;
		END
	ELSE
		BEGIN
			SELECT count(Upvote) AS [Upvotes] FROM PostVotes WHERE PostID = @ID;
		END
END

GO