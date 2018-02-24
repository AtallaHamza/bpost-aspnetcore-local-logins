IF(EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'dbo' 
                 AND  TABLE_NAME = 'MeetupMembersRsvp'))
BEGIN
	DROP TABLE [dbo].[MeetupMembersRsvp]
END

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[MeetupMembersRsvp](
	[Id] INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[MeetupId] INT NOT NULL CONSTRAINT FK_MeetupId FOREIGN KEY REFERENCES Meetup(Id),
	[MemberId] INT NOT NULL CONSTRAINT FK_MeetupMembersId FOREIGN KEY REFERENCES Members(Id),
	[Rsvped] BIT NOT NULL DEFAULT (0),
	[Role] VARCHAR(255) NOT NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


