USE [SPortalDb]
GO
/****** Object:  StoredProcedure [dbo].[SelectPostRating]    Script Date: 2013-10-20 01:55:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SelectPostRating]
	@PostID INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT count(p.Upvote) AS Upvotes, count(p.DownVote) AS Downvotes
    FROM PostVotes p
    WHERE p.PostID = @PostID;
END
GO