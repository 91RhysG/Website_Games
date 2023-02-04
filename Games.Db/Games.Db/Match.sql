﻿CREATE TABLE [dbo].[Match]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	EventId INT NOT NULL,
	[DateAdded] DATE NOT NULL,
	[LastUpdated] DATETIME NOT NULL,
	[PlayerOne] VARCHAR(40) NOT NULL,
	[PlayerTwo] VARCHAR(40) NOT NULL,
	[WinningPlayerId] INT,
	CONSTRAINT FK_EventId FOREIGN KEY (EventId) REFERENCES [dbo].[Event] ON DELETE CASCADE
)
