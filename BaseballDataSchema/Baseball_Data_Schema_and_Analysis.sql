--Create a new schema called Baseball
--Loaded all 5.csv files with the Baseball schema
--increased the name & park columns of the Teams file to 200 to load correctly
--SELECT * INTO [Baseball].Batting3 FROM [dbo].[Batting3]
--SELECT * INTO Baseball.People2 FROM [dbo].[People2]
--SELECT * INTO Baseball.Pitching2 FROM [dbo].[Pitching2]
--SELECT * INTO Baseball.Teams3 FROM [dbo].[Teams3]
--SELECT * INTO [Baseball].TeamsFranchises2 FROM [dbo].[TeamsFranchises2]

-- Fix the proper datatypes for all columns in all 5 tables
-- Use the Baseball database
--USE Baseball;
--GO

---- Drop and create Batting table
--IF OBJECT_ID('Baseball.Batting', 'U') IS NOT NULL
--    DROP TABLE Baseball.Batting;
--GO
--CREATE TABLE Baseball.Batting (
--    playerID VARCHAR(9),
--    yearID INT,
--    stint INT,
--    teamID CHAR(3),
--    lgID CHAR(2),
--    G INT,
--    AB INT,
--    R INT,
--    H INT,
--    [2B] INT,   -- Enclose column names starting with numbers in square brackets
--    [3B] INT,   -- Enclose column names starting with numbers in square brackets
--    HR INT,
--    RBI INT,
--    SB INT,
--    CS INT,
--    BB INT,
--    SO INT,
--    IBB INT,
--    HBP INT,
--    SH INT,
--    SF INT,
--    GIDP INT,
--    PRIMARY KEY (playerID, yearID, stint)
--);
--GO

---- Drop and create People table
--IF OBJECT_ID('Baseball.People', 'U') IS NOT NULL
--    DROP TABLE Baseball.People;
--GO
--CREATE TABLE Baseball.People (
--    playerID VARCHAR(9) PRIMARY KEY,
--    birthYear INT,
--    birthMonth INT,
--    birthDay INT,
--    birthCountry VARCHAR(50),
--    birthState VARCHAR(50),
--    birthCity VARCHAR(50),
--    deathYear INT,
--    deathMonth INT,
--    deathDay INT,
--    deathCountry VARCHAR(50),
--    deathState VARCHAR(50),
--    deathCity VARCHAR(50),
--    nameFirst VARCHAR(50),
--    nameLast VARCHAR(50),
--    nameGiven VARCHAR(255),
--    weight INT,
--    height INT,
--    bats CHAR(1),
--    throws CHAR(1),
--    debut DATE,
--    finalGame DATE
--);
--GO

---- Drop and create Pitching table
--IF OBJECT_ID('Baseball.Pitching', 'U') IS NOT NULL
--    DROP TABLE Baseball.Pitching;
--GO
--CREATE TABLE Baseball.Pitching (
--    playerID VARCHAR(9),
--    yearID INT,
--    stint INT,
--    teamID CHAR(3),
--    lgID CHAR(2),
--    W INT,
--    L INT,
--    G INT,
--    GS INT,
--    CG INT,
--    SHO INT,
--    SV INT,
--    IPouts INT,
--    H INT,
--    ER INT,
--    HR INT,
--    BB INT,
--    SO INT,
--    BAOpp FLOAT,
--    ERA FLOAT,
--    IBB INT,
--    WP INT,
--    HBP INT,
--    BK INT,
--    BFP INT,
--    GF INT,
--    R INT,
--    SH INT,
--    SF INT,
--    GIDP INT,
--    PRIMARY KEY (playerID, yearID, stint)
--);
--GO

---- Drop and create Teams table
--IF OBJECT_ID('Baseball.Teams', 'U') IS NOT NULL
--    DROP TABLE Baseball.Teams;
--GO
--CREATE TABLE Baseball.Teams (
--    yearID INT,
--    lgID CHAR(2),
--    teamID CHAR(3),
--    franchID CHAR(3),
--    divID CHAR(1),
--    Rank INT,
--    G INT,
--    Ghome INT,
--    W INT,
--    L INT,
--    DivWin CHAR(1),
--    WCWin CHAR(1),
--    LgWin CHAR(1),
--    WSWin CHAR(1),
--    R INT,
--    AB INT,
--    H INT,
--    [2B] INT,
--    [3B] INT,
--    HR INT,
--    BB INT,
--    SO INT,
--    SB INT,
--    CS INT,
--    HBP INT,
--    SF INT,
--    RA INT,
--    ER INT,
--    ERA FLOAT,
--    CG INT,
--    SHO INT,
--    SV INT,
--    IPouts INT,
--    HA INT,
--    HRA INT,
--    BBA INT,
--    SOA INT,
--    E INT,
--    DP INT,
--    FP FLOAT,
--    name VARCHAR(100),
--    park VARCHAR(200),
--    attendance INT,
--    BPF INT,
--    PPF INT,
--    teamIDBR CHAR(3),
--    teamIDlahman45 CHAR(3),
--    teamIDretro CHAR(3),
--    PRIMARY KEY (yearID, teamID)
--);
--GO

---- Drop and create TeamsFranchises table
--IF OBJECT_ID('Baseball.TeamsFranchises', 'U') IS NOT NULL
--    DROP TABLE Baseball.TeamsFranchises;
--GO
--CREATE TABLE Baseball.TeamsFranchises (
--    franchID CHAR(3) PRIMARY KEY,
--    franchName VARCHAR(50),
--    active CHAR(1),
--    NAassoc CHAR(3)
--);
--GO


--SELECT TOP 10 * FROM [Baseball].[Batting3]

--SELECT @@SERVERNAME

--SELECT TOP 10 * FROM [Baseball].[Batting3]
--SELECT TOP 10 * FROM [Baseball].[People2]
--SELECT TOP 10 * FROM [Baseball].[Teams2]
--SELECT TOP 10 * FROM [Baseball].[Pitching2]
--SELECT TOP 10 * FROM [Baseball].[Baseball].[TeamsFranchises1]


--SELECT TOP 10 *
--FROM [Baseball].[Batting3]

--SELECT TOP 10 *
--FROM [Baseball].[People2]

--SELECT TOP 10 *
--FROM [Baseball].[Pitching2]

--SELECT TOP 10 *
--FROM [Baseball].[Teams3]

--SELECT TOP 10 *
--FROM [Baseball].[TeamsFranchises2] 

--Creating Primary Keys per table
-- Drop the existing table if it exists
--IF OBJECT_ID('Baseball.Batting2', 'U') IS NOT NULL
--BEGIN
--    DROP TABLE Baseball.Batting2;
--END;

-- Create the Batting2 table with primary key
--CREATE TABLE Baseball.Batting2 (
--    playerID VARCHAR(9) NOT NULL,
--    yearID INT NOT NULL,
--    stint INT NOT NULL,
--    teamID CHAR(3) NOT NULL,
--    lgID CHAR(2) NOT NULL,
--    G INT,
--    AB INT,
--    R INT,
--    H INT,
--    HR INT,
--    PRIMARY KEY (playerID, yearID, stint)
--);
-- Example for People1 table
--IF OBJECT_ID('Baseball.People1', 'U') IS NOT NULL
--BEGIN
--    DROP TABLE Baseball.People1;
--END;

--CREATE TABLE Baseball.People1 (
--    playerID VARCHAR(9) PRIMARY KEY,
--    birthYear INT,
--    birthMonth INT,
--    birthDay INT,
--    birthCountry VARCHAR(50),
--    birthState VARCHAR(50),
--    birthCity VARCHAR(50),
--    deathYear INT,
--    deathMonth INT,
--    deathDay INT,
--    deathCountry VARCHAR(50),
--    deathState VARCHAR(50),
--    deathCity VARCHAR(50)
--);

-- Example for Pitching1 table
--IF OBJECT_ID('Baseball.Pitching1', 'U') IS NOT NULL
--BEGIN
--    DROP TABLE Baseball.Pitching1;
--END;

--CREATE TABLE Baseball.Pitching1 (
--    playerID VARCHAR(9) NOT NULL,
--    yearID INT NOT NULL,
--    stint INT NOT NULL,
--    teamID CHAR(3) NOT NULL,
--    lgID CHAR(2) NOT NULL,
--    W INT,
--    L INT,
--    G INT,
--    GS INT,
--    CG INT,
--    PRIMARY KEY (playerID, yearID, stint)
--);

-- Example for Teams2 table
--IF OBJECT_ID('Baseball.Teams2', 'U') IS NOT NULL
--BEGIN
--    DROP TABLE Baseball.Teams2;
--END;

--CREATE TABLE Baseball.Teams2 (
--    yearID INT NOT NULL,
--    lgID CHAR(2) NOT NULL,
--    teamID CHAR(3) NOT NULL,
--    franchID CHAR(3) NOT NULL,
--    divID CHAR(1),
--    Rank INT,
--    G INT,
--    W INT,
--    L INT,
--    PRIMARY KEY (yearID, lgID, teamID)
--);

-- Example for TeamsFranchises1 table
--IF OBJECT_ID('Baseball.TeamsFranchises1', 'U') IS NOT NULL
--BEGIN
--    DROP TABLE Baseball.TeamsFranchises1;
--END;

--CREATE TABLE Baseball.TeamsFranchises1 (
--    franchID CHAR(3) PRIMARY KEY,
--    franchName VARCHAR(50),
--    active CHAR(1),
--    NAassoc CHAR(3)
--);

--SQL query to retrieve information about the primary keys in for the tables

--SELECT 
--    t.name AS TableName,
--    i.name AS IndexName,
--    c.name AS ColumnName
--FROM 
--    sys.indexes i
--JOIN 
--    sys.index_columns ic ON i.object_id = ic.object_id AND i.index_id = ic.index_id
--JOIN 
--    sys.columns c ON ic.object_id = c.object_id AND ic.column_id = c.column_id
--JOIN 
--    sys.tables t ON i.object_id = t.object_id
--WHERE 
--    i.is_primary_key = 1
--ORDER BY 
--    t.name, i.index_id, ic.index_column_id;




--CREATE VIEW PlayerStatsSummary

--USE Baseball;
--GO

---- Drop the view if it exists
--IF OBJECT_ID('PlayerStatsSummary', 'V') IS NOT NULL
--DROP VIEW PlayerStatsSummary;
--GO

--CREATE VIEW PlayerStatsSummary AS
--SELECT 
--    b.playerID,
--    p.FullName,
--    p.birthCountry,
--    p.birthState,
--    p.birthCity,
--    p.deathCountry,
--    p.deathState,
--    p.deathCity,
--    p.weight,
--    p.height,
--    p.bats,
--    p.throws,
--    p.debut,
--    p.finalGame,
--    t.yearID,
--    t.lgID,
--    t.teamID,
--    t.name AS teamName,
--    b.G AS gamesPlayed,
--    b.AB AS atBats,
--    b.R AS runs,
--    b.H AS hits,
--    b.[2B] AS doubles,
--    b.[3B] AS triples,
--    b.HR AS homeRuns,
--    b.RBI,
--    b.SB AS stolenBases,
--    b.CS AS caughtStealing,
--    b.BB AS walks,
--    b.SO AS strikeouts,
--    b.IBB AS intentionalWalks,
--    b.HBP AS hitByPitch,
--    b.SH AS sacrificeHits,
--    b.SF AS sacrificeFlies,
--    b.GIDP AS groundedIntoDoublePlays,
--    pt.W AS pitchingWins,
--    pt.L AS pitchingLosses,
--    pt.G AS pitchingGames,
--    pt.GS AS gamesStarted,
--    pt.CG AS completeGames,
--    pt.SH AS pitchingShutouts,
--    pt.SV AS saves,
--    pt.IPOuts AS inningsPitchedOuts,
--    pt.H AS hitsAllowed,
--    pt.ER AS earnedRuns,
--    pt.HR AS homeRunsAllowed,
--    pt.BB AS pitchingWalks,
--    pt.SO AS pitchingStrikeouts,
--    pt.ERA AS earnedRunAverage,
--    tf.franchName AS franchiseName
--FROM 
--    Baseball.Batting3 b
--JOIN 
--    Baseball.People2 p ON b.playerID = p.playerID
--JOIN 
--    Baseball.Teams3 t ON b.teamID = t.teamID AND b.yearID = t.yearID AND b.lgID = t.lgID
--JOIN 
--    Baseball.Pitching2 pt ON b.playerID = pt.playerID AND b.yearID = pt.yearID AND b.stint = pt.stint
--JOIN 
--    Baseball.TeamsFranchises2 tf ON t.franchID = tf.franchID;
--GO


--SELECT TOP 1000 *
--FROM PlayerStatsSummary;

--code retrieves all the player statistics from the PlayerStatsSummary view but only includes 
--players who have hit more than 10 home runs.
--SELECT *
--FROM PlayerStatsSummary
--WHERE homeRuns > 10; 


--Adds a calculated column with the player’s age and a calculated column with each player’s 
--first and last name concatenated. Once the calculated columns are added, drops the other 
--columns related to birth date and name.
--Deletes any rows with missing values
--Once the calculated columns are added, drops the other columns related to birth date and name.
--Deletes any rows with missing values
--USE Baseball;
--GO

---- Step 1: Add columns for FullName and Age
--ALTER TABLE Baseball.People2
--ADD FullName AS (nameFirst + ' ' + nameLast) PERSISTED, 
--    Age AS (YEAR(GETDATE()) - birthYear) PERSISTED;
--GO

---- Step 2: Verify the columns
--SELECT TOP 10 FullName, Age FROM Baseball.People2;
--GO

---- Step 3: Drop columns related to birth date and name
--ALTER TABLE Baseball.People2
--DROP COLUMN birthYear, birthMonth, birthDay, nameFirst, nameLast;
--GO

---- Step 4: Delete rows with missing values
--DELETE FROM Baseball.People2
--WHERE FullName IS NULL OR Age IS NULL;
--GO

---- Verify the result
--SELECT TOP 10 * FROM Baseball.People2;


--SELECT COLUMN_NAME
--FROM INFORMATION_SCHEMA.COLUMNS
--WHERE TABLE_NAME = 'People2';


--Check if there is players taht played at least 50 games
--SELECT 
--    p.playerID, 
--    p.nameGiven, 
--    p.weight, 
--    p.height, 
--    p.bats, 
--    p.throws, 
--    p.birthCountry, 
--    p.birthState, 
--    p.birthCity,
--    p.debut,
--    p.finalGame,
--    p.retroID,
--    p.bbrefID,
--    b.G
--FROM 
--    Baseball.People2 p
--JOIN 
--    Baseball.Batting3 b ON p.playerID = b.playerID
--WHERE 
--    b.G >= 50;

--SELECT 
--    p.playerID, 
--    p.nameGiven, 
--    p.weight, 
--    p.height, 
--    p.bats, 
--    p.throws, 
--    p.birthCountry, 
--    p.birthState, 
--    p.birthCity,
--    p.debut,
--    p.finalGame,
--    p.retroID,
--    p.bbrefID
--FROM 
--    Baseball.People2 p
--WHERE 
--    p.finalGame IS NULL;


--Check for non-NULL finalGame Values
--SELECT 
--    p.playerID, 
--    p.nameGiven, 
--    p.finalGame
--FROM 
--    Baseball.People2 p
--WHERE 
--    p.finalGame IS NOT NULL
--ORDER BY p.finalGame DESC;


--Check the Entire People2 Table
--SELECT *
--FROM Baseball.People2;

--Verify finalGame Field
--SELECT 
--    playerID, 
--    nameGiven, 
--    finalGame
--FROM 
--    Baseball.People2
--WHERE 
--    finalGame IS NOT NULL
--ORDER BY 
--    finalGame DESC;

--Check for Rows in the People2 Table
----SELECT COUNT(*)
----FROM Baseball.People2;

--Analyze finalGame Values
--SELECT DISTINCT finalGame
--FROM Baseball.People2;


--Check the Data in People2 and Batting3 Tables
---- Check the first few rows in People2
--SELECT TOP 10 *
--FROM Baseball.People2;

---- Check the first few rows in Batting3
--SELECT TOP 10 *
--FROM Baseball.Batting3;

--Check if finalGame has Any Non-NULL Values
--SELECT 
--    COUNT(*)
--FROM 
--    Baseball.People2
--WHERE 
--    finalGame IS NOT NULL;



--SELECT 
--    DISTINCT finalGame
--FROM 
--    Baseball.People2
--ORDER BY 
--    finalGame DESC;

--Data Timeline
--SELECT 
--    MIN(finalGame) AS EarliestGame, 
--    MAX(finalGame) AS LatestGame
--FROM 
--    Baseball.People2
--WHERE 
--    finalGame IS NOT NULL;

--players who have played at least 50 games and are still active.  Use the “finalGame” field 
--from the “People” table to determine if a player is active. Retrieve weight, throws, bats, 
--throws, all birth-related and all name-related columns from the “People” table and retrieve 
--all columns from the “Batting” table.
--	SELECT 
--    p.playerID, 
--    p.nameGiven, 
--    p.weight, 
--    p.height, 
--    p.bats, 
--    p.throws, 
--    p.birthCountry, 
--    p.birthState, 
--    p.birthCity,
--    p.debut,
--    p.finalGame,
--    p.retroID,
--    p.bbrefID,
--    b.*
--FROM 
--    Baseball.People2 p
--JOIN 
--    Baseball.Batting3 b ON p.playerID = b.playerID
--WHERE 
--    b.G >= 50 
--    AND p.finalGame >= DATEADD(year, -5, GETDATE());



---- Drop the FullName column if it exists
--IF COL_LENGTH('Baseball.People2', 'FullName') IS NOT NULL
--BEGIN
--    ALTER TABLE Baseball.People2
--    DROP COLUMN FullName;
--END;

---- Drop the Age column if it exists
--IF COL_LENGTH('Baseball.People2', 'Age') IS NOT NULL
--BEGIN
--    ALTER TABLE Baseball.People2
--    DROP COLUMN Age;
--END;

-- Add the FullName computed column
--ALTER TABLE Baseball.People2
--ADD FullName AS (nameGiven);

---- Add the Age computed column
--ALTER TABLE Baseball.People2
--ADD Age AS (
--    CASE
--        WHEN deathYear IS NOT NULL AND deathMonth IS NOT NULL AND deathDay IS NOT NULL
--        THEN DATEDIFF(year, CAST(CAST(deathYear AS VARCHAR(4)) + '-' + CAST(deathMonth AS VARCHAR(2)) + '-' + CAST(deathDay AS VARCHAR(2)) AS DATE), GETDATE()) - 
--            CASE 
--                WHEN DATEADD(year, DATEDIFF(year, CAST(CAST(deathYear AS VARCHAR(4)) + '-' + CAST(deathMonth AS VARCHAR(2)) + '-' + CAST(deathDay AS VARCHAR(2)) AS DATE), GETDATE()), CAST(CAST(deathYear AS VARCHAR(4)) + '-' + CAST(deathMonth AS VARCHAR(2)) + '-' + CAST(deathDay AS VARCHAR(2)) AS DATE)) > GETDATE() 
--                THEN 1 
--                ELSE 0 
--            END
--        ELSE NULL
--    END
--);


--SELECT 
--    playerID, 
--    birthCountry, 
--    birthState, 
--    birthCity, 
--    deathYear, 
--    deathMonth, 
--    deathDay, 
--    deathCountry, 
--    deathState, 
--    deathCity, 
--    FullName, 
--    weight, 
--    height, 
--    bats, 
--    throws, 
--    debut, 
--    finalGame, 
--    retroID, 
--    bbrefID, 
--    Age
--FROM 
--    Baseball.People2;


--ALTER TABLE Baseball.People2
--DROP COLUMN deathYear, deathMonth, deathDay, nameGiven;


-- Drop the Age and FullName columns if they exist
--IF COL_LENGTH('Baseball.People2', 'Age') IS NOT NULL
--BEGIN
--    ALTER TABLE Baseball.People2
--    DROP COLUMN Age;
--END;

--IF COL_LENGTH('Baseball.People2', 'FullName') IS NOT NULL
--BEGIN
--    ALTER TABLE Baseball.People2
--    DROP COLUMN FullName;
--END;


--ALTER TABLE Baseball.People2
--ADD FullName AS (playerID);


--SELECT COLUMN_NAME
--FROM INFORMATION_SCHEMA.COLUMNS
--WHERE TABLE_NAME = 'People2' AND TABLE_SCHEMA = 'Baseball';

-- Drop the Age and FullName columns if they exist
--IF COL_LENGTH('Baseball.People2', 'Age') IS NOT NULL
--BEGIN
--    ALTER TABLE Baseball.People2
--    DROP COLUMN Age;
--END;

--IF COL_LENGTH('Baseball.People2', 'FullName') IS NOT NULL
--BEGIN
--    ALTER TABLE Baseball.People2
--    DROP COLUMN FullName;
--END;


--ALTER TABLE Baseball.People2
--ADD FullName AS (playerID);

-- Assuming you want to add the age column based on `debut` and `finalGame` dates
--ALTER TABLE Baseball.People2
--ADD Age AS (
--    CASE
--        WHEN finalGame IS NOT NULL AND debut IS NOT NULL
--        THEN DATEDIFF(year, debut, finalGame) -
--            CASE 
--                WHEN DATEADD(year, DATEDIFF(year, debut, finalGame), debut) > finalGame 
--                THEN 1 
--                ELSE 0 
--            END
--        ELSE NULL
--    END
--);


-- Delete rows with missing values in any column
--DELETE FROM Baseball.People2
--WHERE 
--    playerID IS NULL OR
--    birthCountry IS NULL OR
--    birthState IS NULL OR
--    birthCity IS NULL OR
--    deathCountry IS NULL OR
--    deathState IS NULL OR
--    deathCity IS NULL OR
--    weight IS NULL OR
--    height IS NULL OR
--    bats IS NULL OR
--    throws IS NULL OR
--    debut IS NULL OR
--    finalGame IS NULL OR
--    retroID IS NULL OR
--    bbrefID IS NULL OR
--    FullName IS NULL OR
--    Age IS NULL;

--SELECT *
--FROM Baseball.People2
--WHERE 
--    playerID IS NULL OR
--    birthCountry IS NULL OR
--    birthState IS NULL OR
--    birthCity IS NULL OR
--    deathCountry IS NULL OR
--    deathState IS NULL OR
--    deathCity IS NULL OR
--    weight IS NULL OR
--    height IS NULL OR
--    bats IS NULL OR
--    throws IS NULL OR
--    debut IS NULL OR
--    finalGame IS NULL OR
--    retroID IS NULL OR
--    bbrefID IS NULL OR
--    FullName IS NULL OR
--    Age IS NULL;


--SELECT *
--FROM Baseball.People2
--WHERE 
--    playerID IS NULL OR
--    birthCountry IS NULL OR
--    birthState IS NULL OR
--    birthCity IS NULL OR
--    deathCountry IS NULL OR
--    deathState IS NULL OR
--    deathCity IS NULL OR
--    weight IS NULL OR
--    height IS NULL OR
--    bats IS NULL OR
--    throws IS NULL OR
--    debut IS NULL OR
--    finalGame IS NULL OR
--    retroID IS NULL OR
--    bbrefID IS NULL OR
--    FullName IS NULL OR
--    Age IS NULL;

--Data Integrity
--SELECT 
--    playerID, 
--    birthCountry, 
--    birthState, 
--    birthCity, 
--    deathCountry, 
--    deathState, 
--    deathCity, 
--    FullName, 
--    weight, 
--    height, 
--    bats, 
--    throws, 
--    debut, 
--    finalGame, 
--    retroID, 
--    bbrefID, 
--    Age
--FROM 
--    Baseball.People2;


--SELECT 
--    playerID, 
--    FullName, 
--    Age
--FROM 
--    Baseball.People2
--WHERE 
--    FullName IS NULL OR
--    Age IS NULL;


--Verify calculated Coumns
--SELECT 
--    playerID, 
--    debut, 
--    finalGame,
--    DATEDIFF(year, debut, finalGame) -
--        CASE 
--            WHEN DATEADD(year, DATEDIFF(year, debut, finalGame), debut) > finalGame 
--            THEN 1 
--            ELSE 0 
--        END AS CalculatedAge
--FROM 
--    Baseball.People2;


--SELECT * 
--FROM INFORMATION_SCHEMA.TABLES 
--WHERE TABLE_NAME = 'People2';

--SELECT * 
--FROM INFORMATION_SCHEMA.TABLES 
--WHERE TABLE_NAME = 'Batting3';

--SELECT * 
--FROM INFORMATION_SCHEMA.TABLES 
--WHERE TABLE_SCHEMA = 'Baseball' AND TABLE_NAME IN ('People2', 'Batting3');

--USE Baseball;
--GO

---- Check the structure of the People2 table
--SELECT COLUMN_NAME
--FROM INFORMATION_SCHEMA.COLUMNS
--WHERE TABLE_SCHEMA = 'Baseball' AND TABLE_NAME = 'People2';
--GO


USE Baseball;
GO

-- Ensure the finalGame field is either null or after 2018 for active players
--SELECT TOP 1 
--    p.playerID, 
--    p.nameGiven, 
--    SUM(b.RBI) AS TotalRBIs
--FROM 
--    Baseball.People2 p
--JOIN 
--    Baseball.Batting3 b ON p.playerID = b.playerID
--WHERE 
--    b.yearID BETWEEN 2015 AND 2018
--    AND (p.finalGame IS NULL OR p.finalGame > '2018-12-31')
--GROUP BY 
--    p.playerID, p.nameGiven
--ORDER BY 
--    TotalRBIs DESC;
--GO

--Verify columns
--USE Baseball;
--GO

---- Check the structure of the People2 table
--SELECT COLUMN_NAME
--FROM INFORMATION_SCHEMA.COLUMNS
--WHERE TABLE_SCHEMA = 'Baseball' AND TABLE_NAME = 'People2';
--GO


--USE Baseball;
--GO

---- Ensure the finalGame field is either null or after 2018 for active players
--SELECT TOP 1 
--    p.playerID, 
--    p.FullName, 
--    SUM(CAST(b.RBI AS INT)) AS TotalRBIs
--FROM 
--    Baseball.People2 p
--JOIN 
--    Baseball.Batting3 b ON p.playerID = b.playerID
--WHERE 
--    b.yearID BETWEEN 2015 AND 2018
--    AND (p.finalGame IS NULL OR p.finalGame > '2018-12-31')
--GROUP BY 
--    p.playerID, p.FullName
--ORDER BY 
--    TotalRBIs DESC;
--GO


----Code identifies the active player who had the most runs batted in RBIs from 2015 -2018 based
----on 'final game' field
--USE Baseball;
--GO

---- Ensure the finalGame field is either null or after 2018 for active players
--SELECT TOP 1 
--    p.playerID, 
--    p.FullName, 
--    SUM(CASE WHEN ISNUMERIC(b.RBI) = 1 THEN CAST(b.RBI AS INT) ELSE 0 END) AS TotalRBIs
--FROM 
--    Baseball.People2 p
--JOIN 
--    Baseball.Batting3 b ON p.playerID = b.playerID
--WHERE 
--    b.yearID BETWEEN 2015 AND 2018
--    AND (p.finalGame IS NULL OR p.finalGame > '2018-12-31')
--GROUP BY 
--    p.playerID, p.FullName
--ORDER BY 
--    TotalRBIs DESC;
--GO


--Code identifies how many double plays Albert Pujols ground into (“GIDP” from Batting table) 
--in 2016 
--USE Baseball;
--GO

---- Select the playerID and the sum of double plays grounded into for Albert Pujols in 2016
--SELECT 
--    playerID,
--    SUM(CAST(GIDP AS INT)) AS TotalDoublePlays
--FROM 
--    Baseball.Batting3
--WHERE 
--    playerID = 'pujolal01' -- Ensure this is the correct playerID for Albert Pujols
--    AND yearID = 2016
--GROUP BY 
--    playerID;
--GO



--Code identifies which player had the highest batting average (BA) in a given year, and what 
--was the average?
--USE Baseball;
--GO

---- Aggregate home runs (HR) by year
--SELECT 
--    yearID,
--    SUM(CAST(HR AS INT)) AS TotalHomeRuns
--FROM 
--    Baseball.Batting3
--GROUP BY 
--    yearID
--ORDER BY 
--    yearID;
--GO


--Highest Batting Average in a Given Year
--USE Baseball;
--GO

---- Find the player with the highest batting average in a given year
--SELECT 
--    playerID,
--    yearID,
--    CASE 
--        WHEN AB = 0 THEN 0 
--        ELSE CAST(H AS FLOAT) / CAST(AB AS FLOAT) 
--    END AS BattingAverage
--FROM 
--    Baseball.Batting3
--WHERE 
--    yearID = 2016
--ORDER BY 
--    BattingAverage DESC;
--GO



--Relationship Between Stolen Bases and Caught Stealing
--USE Baseball;
--GO

---- Aggregate stolen bases (SB) and caught stealing (CS) by year
--SELECT 
--    yearID,
--    SUM(CAST(SB AS INT)) AS TotalStolenBases,
--    SUM(CAST(CS AS INT)) AS TotalCaughtStealing
--FROM 
--    Baseball.Batting3
--GROUP BY 
--    yearID
--ORDER BY 
--    yearID;
--GO

Lahman, S. (2024). Lahman’s Baseball Database [Data set]. Kaggle.
https://www.kaggle.com/datasets/seanlahman/the-history-of-baseball
