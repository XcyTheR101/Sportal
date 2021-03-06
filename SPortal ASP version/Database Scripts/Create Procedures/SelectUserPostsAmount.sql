USE [SPortalDb]
GO
/****** Object:  StoredProcedure [dbo].[SelectUserPostsAmount]    Script Date: 10/06/2013 10:41:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SelectUserPostsAmount]
	-- Add the parameters for the stored procedure here
	@Username varchar(100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT COUNT(*) AS [Amount]
	FROM Users u INNER JOIN Post p
	ON u.UserID = p.UserID
	WHERE u.Username = @Username;
END

GO