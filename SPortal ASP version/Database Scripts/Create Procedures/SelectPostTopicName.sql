USE [SPortalDb]
GO
/****** Object:  StoredProcedure [dbo].[SelectPostTopicName]    Script Date: 2013-10-20 02:43:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SelectPostTopicName]
	-- Add the parameters for the stored procedure here
	@PostID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT t.TopicName
	FROM Post p INNER JOIN Topic t
	ON p.CommentID = t.TopicID
	WHERE p.PostID = @PostID;
END
GO