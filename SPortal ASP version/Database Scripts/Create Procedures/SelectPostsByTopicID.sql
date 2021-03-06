USE [SPortalDb]
GO
/****** Object:  StoredProcedure [dbo].[SelectPostsByTopicID]    Script Date: 2013-10-20 02:42:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SelectPostsByTopicID]
	@TopicID INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT pt.[Type] AS [PostType], p.PostID, p.CommentID, u.Username, p.[Text], p.SubmissionDate
	FROM PostType pt INNER JOIN Post p
	ON pt.PostTypeID = p.PostTypeID INNER JOIN Topic t
	ON p.CommentID = t.TopicID INNER JOIN Users u
	ON p.UserID = u.UserID
	WHERE t.TopicID = @TopicID
END

GO