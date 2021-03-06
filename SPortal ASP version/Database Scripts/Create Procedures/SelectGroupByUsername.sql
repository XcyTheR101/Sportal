USE [SPortalDb]
GO
/****** Object:  StoredProcedure [dbo].[SelectGroupsByUsername]    Script Date: 2013-10-21 03:33:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SelectGroupsByUsername]
@Username VARCHAR(50)
AS

	SELECT t.TopicName
	FROM [Group] g INNER JOIN Topic t
	ON g.GroupID = t.TopicID INNER JOIN Users u
	ON t.CreatedBy = u.UserID
	WHERE u.Username = @Username

	GO