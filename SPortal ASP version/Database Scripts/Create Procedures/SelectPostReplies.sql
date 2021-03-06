USE [SPortalDb]
GO
/****** Object:  StoredProcedure [dbo].[SelectPostReplies]    Script Date: 2013-10-21 01:47:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SelectPostReplies]
	-- Add the parameters for the stored procedure here
	@PostID INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT p.PostID, p.[Text], u.Username, p.SubmissionDate, p.PostTypeID
	FROM Post p INNER JOIN PostUsers pv
	ON p.PostID = pv.PostID INNER JOIN Users u
	ON pv.UserID = u.UserID
	WHERE p.CommentID = @PostID AND NOT PostTypeID = 1
END
GO