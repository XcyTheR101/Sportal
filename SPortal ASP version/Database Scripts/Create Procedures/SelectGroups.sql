USE [SPortalDb]
GO
/****** Object:  StoredProcedure [dbo].[SelectGroups]    Script Date: 2013-10-21 03:13:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SelectGroups]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT g.GroupID, t.TopicName, t.TopicDescription, t.CreationDate, g.Limited, u.Username
	FROM [Group] g INNER JOIN Topic t
	ON g.GroupID = t.TopicID INNER JOIN Users u
	ON t.CreatedBy = u.UserID
	WHERE t.TopicTypeID = 3
END
GO