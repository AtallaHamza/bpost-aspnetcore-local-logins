IF(OBJECT_ID('FK_UserClaims', 'F') IS NOT NULL)
BEGIN
	ALTER TABLE [dbo].[UserClaims] DROP CONSTRAINT FK_UserClaims;
END

IF(EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'dbo' 
                 AND  TABLE_NAME = 'User'))
BEGIN
	DROP TABLE [dbo].[User]
END

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[User](
	[Id] INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[Username] VARCHAR(255) UNIQUE NOT NULL,
	[Password] VARCHAR(max) NOT NULL,
	[FirstName] VARCHAR(200) NOT NULL,
	[Surname] VARCHAR(max) NOT NULL,
	[Email] VARCHAR(255) NOT NULL,
	[DateOfBirth] DATETIME NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


