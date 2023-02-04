﻿CREATE TABLE [dbo].[Event]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	[GameId] INT NOT NULL,
	[DateAdded] DATE NOT NULL,
	[LastUpdated] DATETIME NOT NULL,
	[DateOfEvent] DATE NOT NULL,
	[Name] VARCHAR(50) NOT NULL,
	[Description] TEXT NOT NULL,
	[Type] VARCHAR(50) NOT NULL,
	[Rating] FLOAT,
	[NumberOfVotes] INT NOT NULL,
	CONSTRAINT FK_GameId FOREIGN KEY (GameId) REFERENCES [dbo].[Game] ON DELETE CASCADE
)