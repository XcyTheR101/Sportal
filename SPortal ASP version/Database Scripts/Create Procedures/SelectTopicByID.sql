USE [SPortalDb]
GO
/****** Object:  StoredProcedure [dbo].[SelectTopicByID]    Script Date: 2013-10-20 01:47:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SelectTopicByID]
	@TopicID INT
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
	WHERE t.TopicID = @TopicID;
END

GO