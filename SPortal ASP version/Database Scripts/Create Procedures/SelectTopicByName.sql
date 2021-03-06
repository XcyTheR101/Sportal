USE [SPortalDb]
GO
/****** Object:  StoredProcedure [dbo].[SelectTopicByName]    Script Date: 2013-10-20 01:48:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SelectTopicByName]
	@TopicName varchar(100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT TopicID, TopicName, TopicBody, TopicDescription, CreationDate, tt.[Type] AS [TopicType], u.Username
	FROM Topic t INNER JOIN TopicType tt
	ON t.TopicTypeID = tt.TopicTypeID INNER JOIN Users u
	ON t.CreatedBy = u.UserID
	WHERE TopicName = @TopicName;
END

GO