USE [SPortalDb]
GO
/****** Object:  StoredProcedure [dbo].[SelectTopicRepliesAmount]    Script Date: 2013-10-20 11:36:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SelectTopicRepliesAmount]
	@TopicName Varchar(100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT COUNT(*) AS [Amount]
	FROM Topic t INNER JOIN Post p
	ON t.TopicID = p.CommentID
	WHERE t.TopicName = @TopicName;
END

GO