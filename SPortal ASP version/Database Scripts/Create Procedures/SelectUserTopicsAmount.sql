USE [SPortalDb]
GO
/****** Object:  StoredProcedure [dbo].[SelectUserPostsAmount]    Script Date: 10/12/2013 13:22:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SelectUserTopicsAmount]
	-- Add the parameters for the stored procedure here
	@Username varchar(100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT COUNT(*) AS [Amount]
	FROM Users u INNER JOIN Topic t
	ON u.UserID = t.CreatedBy
	WHERE u.Username = @Username;
END

GO