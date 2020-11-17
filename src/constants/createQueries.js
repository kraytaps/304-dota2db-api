exports.CREATE_DB = `
	CREATE DATABASE IF NOT EXISTS dota2db;
`;

exports.CREATE_SPONSOR = `
	CREATE TABLE IF NOT EXISTS sponsor (
		companyName VARCHAR(255) NOT NULL,
		PRIMARY KEY (companyName)
	);
`;

exports.CREATE_STAGE = `
	CREATE TABLE IF NOT EXISTS stage (
		stageID INT NOT NULL AUTO_INCREMENT,
		stageName VARCHAR(255) NOT NULL,
		PRIMARY KEY (stageID));
`;

exports.CREATE_PRIZE = `
	CREATE TABLE IF NOT EXISTS prize (
		prizeID INT AUTO_INCREMENT,
		name varchar(255),
		prizeValueUSD INT,
		PRIMARY KEY (prizeID)
	);
`;

exports.CREATE_TEAM = `
	CREATE TABLE IF NOT EXISTS team (
		teamName varchar(255) NOT NULL,
		countryOfOrigin varchar(255) NOT NULL,
		prizeID INT NOT NULL,
		PRIMARY KEY (teamName),
		FOREIGN KEY (prizeID) REFERENCES Prize(prizeID)
	);
`;

exports.CREATE_PRIZERECEIVEDBYTEAM = `
	CREATE TABLE IF NOT EXISTS prizereceivedbyteam (
		prizeID INT NOT NULL,
		teamName VARCHAR(255) NOT NULL,
		PRIMARY KEY (prizeID, teamName),
		FOREIGN KEY (prizeID) REFERENCES Prize(prizeID),
		FOREIGN KEY (teamName) REFERENCES Team(teamName)
	);
`;

exports.CREATE_SERIESOFMATCHESPLAYEDON = `
	CREATE TABLE IF NOT EXISTS seriesofmatchesplayedon (
		seriesID INT NOT NULL,
		homeTeam VARCHAR(255),
		awayTeam VARCHAR(255),
		seriesWinner VARCHAR(255),
		stageID INT NOT NULL,
		PRIMARY KEY (seriesID),
		FOREIGN KEY (stageID) REFERENCES Stage(stageID)
	);
`;

exports.CREATE_CONSISTSOFMATCH = `
	CREATE TABLE IF NOT EXISTS consistsofmatch (
		winningTeam VARCHAR(255) NOT NULL,
		seriesID INT NOT NULL,
		PRIMARY KEY (winningTeam, seriesID),
		FOREIGN KEY(seriesID) REFERENCES seriesofmatchesplayedon(seriesID)
	);
`;