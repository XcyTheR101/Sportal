USE [SPortalDb]
GO
/****** Object:  StoredProcedure [dbo].[AddGroupMember]    Script Date: 2013-10-21 07:56:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddGroupMember]
@GroupName VARCHAR(30),
@Username VARCHAR(50)
AS
DECLARE @GroupID INT;
DECLARE @UserID INT;
BEGIN
	SELECT @GroupID = TopicID FROM Topic WHERE TopicName = @GroupName
	SELECT @UserID = UserID FROM Users WHERE Username = @Username
	IF ((SELECT count(InviteID) FROM GroupInvites WHERE UserID = @UserID AND GroupID = @GroupID) = 0)
	BEGIN
		INSERT INTO UserGroup (GroupID, UserID) VALUES (@GroupID, @UserID)
		DELETE FROM GroupInvites WHERE UserID = @UserID AND GroupID = @GroupID
	END
END
GO