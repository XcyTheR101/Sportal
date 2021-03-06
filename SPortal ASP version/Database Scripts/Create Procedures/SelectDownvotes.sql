USE [SPortalDb]
GO
/****** Object:  StoredProcedure [dbo].[SelectDownvotes]    Script Date: 2013-10-20 06:28:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectDownvotes]
@Type INT,
@ID INT
AS
BEGIN
	IF (@Type=1)
		BEGIN
			SELECT count(Downvote) AS [Downvotes] FROM TopicVotes WHERE TopicID = @ID AND Downvote = 1;
		END
	ELSE
		BEGIN
			SELECT count(Downvote) AS [Downvotes] FROM PostVotes WHERE PostID = @ID AND Downvote = 1;
		END
END

GO