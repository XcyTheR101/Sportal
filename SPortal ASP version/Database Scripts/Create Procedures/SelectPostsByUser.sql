USE [SPortalDb]
GO
/****** Object:  StoredProcedure [dbo].[SelectPostsByUser]    Script Date: 2013-10-20 04:06:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[SelectPostsByUser]
@Username VARCHAR(50)
AS
	
SELECT PostID
FROM Post 
WHERE UserID = (SELECT UserID FROM Users WHERE Username = @Username) AND PostTypeID = 1

GO
