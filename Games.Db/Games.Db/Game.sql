﻿CREATE TABLE [dbo].[Game]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	[DateAdded] DATE NOT NULL,
	[LastUpdated] DATETIME NOT NULL,
	[Name] VARCHAR(50) NOT NULL,
	[Description] TEXT NOT NULL,
	[Type] VARCHAR(50) NOT NULL,
	[Rating] FLOAT,
	[NumberOfVotes] INT NOT NULL
)
