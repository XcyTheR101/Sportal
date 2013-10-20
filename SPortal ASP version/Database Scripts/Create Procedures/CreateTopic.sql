USE [SPortalDb]
GO
/****** Object:  StoredProcedure [dbo].[CreateTopic]    Script Date: 2013-10-20 01:53:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CreateTopic]
	@TopicName varchar(100),
	@Description text,
	@Text text,
	@Username varchar(100),
	@Type int
AS

DECLARE @TopicID INT

BEGIN

	DECLARE @UserID INT
	SET @UserID = (SELECT UserID FROM Users WHERE Username = @Username)
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO Topic (TopicName, TopicDescription, TopicBody, CreationDate, TopicTypeID, CreatedBy)
		VALUES (@TopicName, @Description, @Text, CONVERT(DATE,GETDATE()), @Type, @UserID);

	SET @TopicID = SCOPE_IDENTITY();

	INSERT INTO TopicVotes (TopicID, UserID, Downvote, Upvote)
		VALUES(@TopicID, @UserID, 0, 0)

END
GO