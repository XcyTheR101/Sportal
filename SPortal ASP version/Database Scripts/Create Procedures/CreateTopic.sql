USE [SPortalDb]
GO
/****** Object:  StoredProcedure [dbo].[CreateTopic]    Script Date: 2013-10-20 11:58:50 PM ******/
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
	if ((SELECT count(TopicName) FROM Topic WHERE TopicName = @TopicName) = 0)
	BEGIN
		INSERT INTO Topic (TopicName, TopicDescription, TopicBody, CreationDate, TopicTypeID, CreatedBy)
			VALUES (@TopicName, @Description, @Text, CONVERT(DATE,GETDATE()), @Type, @UserID);
	END
END
GO