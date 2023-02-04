/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/


MERGE INTO Game AS TARGET
USING(VALUES
('2023-02-03', '2023-02-04', 'Pokemon', 'A collectable card game originating from Japan', 'Card Game', 0),
('2023-02-02', '2023-02-04', 'Warhammer 40k', 'A tabletop game originating from the UK', 'War Game', 0)
)
AS SOURCE (DateAdded, LastUpdated, Name, Description, Type, NumberOfVotes)
ON TARGET.Name = SOURCE.Name
WHEN NOT MATCHED BY TARGET THEN
INSERT (DateAdded, LastUpdated, Name, Description, Type, NumberOfVotes)
VALUES(DateAdded, LastUpdated, Name, Description, Type, NumberOfVotes);


MERGE INTO Event AS TARGET
USING(VALUES
(1, '2023-02-04', '2023-02-04', '2023-02-10', 'Event One', 'This is the first event', 'Casual', 0),
(1, '2023-02-04', '2023-02-04', '2023-02-11', 'Event Two', 'This is the second event', 'State', 0),
(2, '2023-02-04', '2023-02-04', '2023-04-10', 'Event Three', 'This is the third event', 'Country', 0),
(2, '2023-02-04', '2023-02-04', '2023-05-10', 'Event Four', 'This is the fourth event', 'International', 0)
)
AS SOURCE (GameId, DateAdded, LastUpdated, DateOfEvent, Name, Description, Type, NumberOfVotes)
ON TARGET.Name = SOURCE.Name
WHEN NOT MATCHED BY TARGET THEN
INSERT (GameId, DateAdded, LastUpdated, DateOfEvent, Name, Description, Type, NumberOfVotes)
VALUES(GameId, DateAdded, LastUpdated, DateOfEvent, Name, Description, Type, NumberOfVotes);

MERGE INTO Match AS TARGET
USING(VALUES
(1, '2023-02-04', '2023-02-04', 'Match_1.1', 'Match_1.2', 1),
(1, '2023-02-04', '2023-02-04', 'Match_2.1', 'Match_2.2', 1),
(2, '2023-02-04', '2023-02-04', 'Match_3.1', 'Match_3.2', 1),
(2, '2023-02-04', '2023-02-04', 'Match_4.1', 'Match_4.2', 1),
(3, '2023-02-04', '2023-02-04', 'Match_5.1', 'Match_5.2', 1),
(3, '2023-02-04', '2023-02-04', 'Match_6.1', 'Match_6.2', 1),
(4, '2023-02-04', '2023-02-04', 'Match_7.1', 'Match_7.2', 1),
(4, '2023-02-04', '2023-02-04', 'Match_8.1', 'Match_8.2', 1)
)
AS SOURCE (EventId, DateAdded, LastUpdated, PlayerOne, PlayerTwo, WinningPlayerId)
ON TARGET.PlayerOne = SOURCE.PlayerOne
WHEN NOT MATCHED BY TARGET THEN
INSERT (EventId, DateAdded, LastUpdated, PlayerOne, PlayerTwo, WinningPlayerId)
VALUES(EventId, DateAdded, LastUpdated, PlayerOne, PlayerTwo, WinningPlayerId);
GO
