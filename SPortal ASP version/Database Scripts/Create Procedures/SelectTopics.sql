USE [SPortalDb]
GO
/****** Object:  StoredProcedure [dbo].[SelectTopics]    Script Date: 2013-10-20 01:51:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SelectTopics]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT t.TopicName, t.TopicDescription, t.TopicBody, t.CreationDate, tt.[Type] AS [TopicType]
	FROM Topic t INNER JOIN TopicType tt
	ON t.TopicTypeID = tt.TopicTypeID;
END

GO