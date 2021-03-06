USE [SPortalDb]
GO
/****** Object:  StoredProcedure [dbo].[SelectPostByPostID]    Script Date: 2013-10-20 01:49:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[SelectPostByPostID]
@PostID INT
AS

SELECT PT.[Type] AS [PostTypeID], p.PostID, p.CommentID, p.[Text], u.Username, p.SubmissionDate
FROM Post P INNER JOIN PostType PT
	ON P.PostTypeID = PT.PostTypeID INNER JOIN Users U
	ON U.UserID = P.UserID
	WHERE PostID = @PostID

GO