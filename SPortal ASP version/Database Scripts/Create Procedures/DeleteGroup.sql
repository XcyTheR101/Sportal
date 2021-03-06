USE [SPortalDb]
GO
/****** Object:  StoredProcedure [dbo].[DeleteGroup]    Script Date: 2013-10-20 11:53:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteGroup]
AS
DECLARE @GroupID INT
DECLARE @GroupName VARCHAR(30)
BEGIN
	SELECT @GroupID = g.GroupID FROM [Group] g
	INNER JOIN Topic t
	ON g.GroupID = t.TopicID
	AND TopicName = @GroupName
	DELETE FROM UserGroup WHERE GroupID = @GroupID
	DELETE FROM GroupInvites WHERE GroupID = @GroupID
	DELETE FROM [Group] WHERE GroupID = @GroupID
	DELETE FROM Topic WHERE TopicID = @GroupID
END
GO