USE [SPortalDb]
GO
/****** Object:  StoredProcedure [dbo].[RemoveGroupMember]    Script Date: 2013-10-21 07:58:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[RemoveGroupMember]
@GroupName VARCHAR(30),
@Username VARCHAR(50)
AS
DECLARE @GroupID INT;
DECLARE @UserID INT;
BEGIN
	SELECT @GroupID = TopicID FROM Topic WHERE TopicName = @GroupName
	SELECT @UserID = UserID FROM Users WHERE Username = @Username
	IF NOT ((SELECT count(InviteID) FROM GroupInvites WHERE UserID = @UserID AND GroupID = @GroupID) = 0)
	BEGIN
		DELETE FROM UserGroup WHERE UserID = @UserID AND GroupID = @GroupID
	END
END
GO