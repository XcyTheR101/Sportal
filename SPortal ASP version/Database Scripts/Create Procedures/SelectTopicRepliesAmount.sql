USE [SPortalDb]
GO
/****** Object:  StoredProcedure [dbo].[SelectTopicRepliesAmount]    Script Date: 10/04/2013 23:00:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[SelectTopicRepliesAmount]
	@TopicName Varchar(100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT COUNT(*) AS [Amount]
	FROM Topic t INNER JOIN TopicPost tp
	ON t.TopicID = tp.TopicID INNER JOIN Post p
	ON tp.PostID = p.PostID
	WHERE t.TopicName = @TopicName;
END
