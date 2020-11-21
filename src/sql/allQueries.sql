-- SETUP QUERIES
CREATE DATABASE IF NOT EXISTS dota2db;
CREATE TABLE IF NOT EXISTS sponsor (
	companyName VARCHAR(255) NOT NULL,
	PRIMARY KEY (companyName)
);
CREATE TABLE IF NOT EXISTS stage (
	stageID INT NOT NULL AUTO_INCREMENT,
	stageName VARCHAR(255) NOT NULL,
	PRIMARY KEY (stageID)
);
CREATE TABLE IF NOT EXISTS prize (
	prizeID INT AUTO_INCREMENT,
	name varchar(255),
	prizeValueUSD INT,
	PRIMARY KEY (prizeID)
);
CREATE TABLE IF NOT EXISTS team (
	teamName varchar(255) NOT NULL,
	countryOfOrigin varchar(255) NOT NULL,
	prizeID INT,
	PRIMARY KEY (teamName),
	FOREIGN KEY (prizeID) REFERENCES Prize(prizeID)
);
CREATE TABLE IF NOT EXISTS prizereceivedbyteam (
	prizeID INT NOT NULL,
	teamName VARCHAR(255) NOT NULL,
	PRIMARY KEY (prizeID, teamName),
	FOREIGN KEY (prizeID) REFERENCES Prize(prizeID),
	FOREIGN KEY (teamName) REFERENCES Team(teamName)
);
CREATE TABLE IF NOT EXISTS seriesofmatchesplayedon (
	seriesID INT NOT NULL,
	homeTeam VARCHAR(255),
	awayTeam VARCHAR(255),
	seriesWinner VARCHAR(255),
	stageID INT NOT NULL,
	PRIMARY KEY (seriesID),
	FOREIGN KEY (stageID) REFERENCES Stage(stageID)
);
CREATE TABLE IF NOT EXISTS consistsofmatch (
	winningTeam VARCHAR(255) NOT NULL,
	seriesID INT NOT NULL,
	PRIMARY KEY (winningTeam, seriesID),
	FOREIGN KEY(seriesID) REFERENCES seriesofmatchesplayedon(seriesID)
);
CREATE TABLE teamMember (
	memberID INT NOT NULL AUTO_INCREMENT,
	firstName varchar(255),
	lastName varchar(255),
	nationality varchar(255),
	teamName varchar(255) NOT NULL,
	PRIMARY KEY (memberID),
	FOREIGN KEY (teamName) REFERENCES team(teamName)
);

DROP TABLE consistsofmatch;
DROP TABLE prizereceivedbyteam;
DROP TABLE seriesofmatchesplayedon;
DROP TABLE sponsor;
DROP TABLE stage;
DROP TABLE teammember;
DROP TABLE team;
DROP TABLE prize;

-- POPULATING QUERIES
INSERT INTO sponsor (companyName) VALUES ('TCL');
INSERT INTO sponsor (companyName) VALUES ('DHL');
INSERT INTO sponsor (companyName) VALUES ('Tinder');
INSERT INTO sponsor (companyName) VALUES ('HyperX');
INSERT INTO sponsor (companyName) VALUES ('Rivalry');

INSERT INTO prize (name, prizeValueUSD) VALUES ('1st', 15603133);
INSERT INTO prize (name, prizeValueUSD) VALUES ('2nd', 4458038);
INSERT INTO prize (name, prizeValueUSD) VALUES ('3rd', 3086334);
INSERT INTO prize (name, prizeValueUSD) VALUES ('4th', 2057556);
INSERT INTO prize (name, prizeValueUSD) VALUES ('5th', 1200241);
INSERT INTO prize (name, prizeValueUSD) VALUES ('6th', 1200241);
INSERT INTO prize (name, prizeValueUSD) VALUES ('7th', 857315);
INSERT INTO prize (name, prizeValueUSD) VALUES ('8th', 857315);
INSERT INTO prize (name, prizeValueUSD) VALUES ('9th', 685852);
INSERT INTO prize (name, prizeValueUSD) VALUES ('10th', 685852);
INSERT INTO prize (name, prizeValueUSD) VALUES ('11th', 685852);
INSERT INTO prize (name, prizeValueUSD) VALUES ('12th', 685852);
INSERT INTO prize (name, prizeValueUSD) VALUES ('13th', 514389);
INSERT INTO prize (name, prizeValueUSD) VALUES ('14th', 514389);
INSERT INTO prize (name, prizeValueUSD) VALUES ('15th', 514389);
INSERT INTO prize (name, prizeValueUSD) VALUES ('16th', 514389);
INSERT INTO prize (name, prizeValueUSD) VALUES ('17th', 85731);
INSERT INTO prize (name, prizeValueUSD) VALUES ('18th', 85731);

INSERT INTO team (teamName, countryOfOrigin, prizeID) VALUES ('OG', 'Europe', 1);
INSERT INTO team (teamName, countryOfOrigin, prizeID) VALUES ('Team Liquid', 'Europe', 2);
INSERT INTO team (teamName, countryOfOrigin, prizeID) VALUES ('PSG.LGD', 'China', 3);
INSERT INTO team (teamName, countryOfOrigin, prizeID) VALUES ('Team Secret', 'Europe', 4);
INSERT INTO team (teamName, countryOfOrigin, prizeID) VALUES ('Vici Gaming', 'China', 5);
INSERT INTO team (teamName, countryOfOrigin, prizeID) VALUES ('Evil Geniuses', 'USA', 6);
INSERT INTO team (teamName, countryOfOrigin, prizeID) VALUES ('Infamous', 'Peru', 7);
INSERT INTO team (teamName, countryOfOrigin, prizeID) VALUES ('Royal Never Give Up', 'China', 8);
INSERT INTO team (teamName, countryOfOrigin, prizeID) VALUES ('Mineski', 'Philippines', 9);
INSERT INTO team (teamName, countryOfOrigin, prizeID) VALUES ('Newbee', 'China', 10);
INSERT INTO team (teamName, countryOfOrigin, prizeID) VALUES ('TNC Predator', 'Philippines', 11);
INSERT INTO team (teamName, countryOfOrigin, prizeID) VALUES ('Virtus.pro', 'Russia', 12);
INSERT INTO team (teamName, countryOfOrigin, prizeID) VALUES ('Natus Vincere', 'Ukraine', 13);
INSERT INTO team (teamName, countryOfOrigin, prizeID) VALUES ('Keen Gaming', 'China', 14);
INSERT INTO team (teamName, countryOfOrigin, prizeID) VALUES ('Fnatic', 'Malaysia', 15);
INSERT INTO team (teamName, countryOfOrigin, prizeID) VALUES ('Alliance', 'Sweden', 16);
INSERT INTO team (teamName, countryOfOrigin, prizeID) VALUES ('Ninjas in Pyjamas', 'Sweden', 17);
INSERT INTO team (teamName, countryOfOrigin, prizeID) VALUES ('Chaos Esports Club', 'United States', 18); 

INSERT INTO teamMember (firstName, lastName, nationality, teamName) VALUES
-- PSG.LGD
('Zhang', 'Ning', 'China', 'PSG.LGD'),
('Wang', 'Changqi', 'China', 'PSG.LGD'),
('Wang', 'Chunyu', 'China', 'PSG.LGD'),
('Lu', 'Yao', 'China', 'PSG.LGD'),
('Yang', 'Shenyi', 'China', 'PSG.LGD'),
('Xu', 'Linsen', 'China', 'PSG.LGD'),
('Jian Wei', 'Yap', 'Malaysia', 'PSG.LGD'),
-- Team Secret
('Lee', 'Seung Gon', 'South Korea', 'Team Secret'),
('Matthew', 'Bailey', 'United Kingdom', 'Team Secret'),
('Michal', 'Jankowski', 'Poland', 'Team Secret'),
('Yeik', 'Nai Zheng', 'Malaysia', 'Team Secret'),
('Ludwig', 'Wahlberg', 'Sweden', 'Team Secret'),
('Yazied', 'Jaradat', 'Jordan', 'Team Secret'),
('Clement', 'Ivanov', 'Estonia', 'Team Secret'),
-- Newbee
('Li', 'Guo', 'China', 'Newbee'),
('Zhu', 'Chao', 'China', 'Newbee'),
('Yawar', 'Hassan', 'Pakistan', 'Newbee'),
('Quinn', 'Callahan', 'USA', 'Newbee'),
('Jingjun', 'Wu', 'USA', 'Newbee'),
('Arif', 'Anwar', 'USA', 'Newbee'),
('Johan', 'Astrom', 'Sweden', 'Newbee'),
-- TNC Predator
('Kim', 'Yong-min', 'South Korea', 'TNC Predator'),
('Arjay', 'Domdom', 'Philippines', 'TNC Predator'),
('Kim', 'Villafuerte', 'Philippines', 'TNC Predator'),
('Armel Paul', 'Tabios', 'Philippines', 'TNC Predator'),
('Carlo', 'Palad', 'Philippines', 'TNC Predator'),
('Timothy', 'Randrup', 'Philippines', 'TNC Predator'),
('Nico', 'Barcelon', 'Philippines', 'TNC Predator');

INSERT INTO stage (stageName) VALUES ('Regional Qualifiers');
INSERT INTO stage (stageName) VALUES ('Group Stage');
INSERT INTO stage (stageName) VALUES ('Main Event');

-- CHECKPOINT QUERIES (JUST A FEW OUT OF THE MANY USED)
-- ${***} are variables passed into the function

-- INSERT
INSERT IGNORE INTO sponsor (companyName)
VALUES ('${name}');

-- DELETE
DELETE FROM prize
WHERE prizeID='${key}';

ALTER TABLE prize AUTO_INCREMENT = '${key}';

-- UPDATE
UPDATE IGNORE team
SET prizeID=${newPrizeID}
WHERE teamName = '${name}';

DELETE FROM prizereceivedbyteam;
INSERT IGNORE INTO prizereceivedbyteam
SELECT p.prizeID, t.teamName
FROM team t, prize p
WHERE t.prizeID = p.prizeID;

-- SELECTION
SELECT *
FROM teammember;

SELECT *
FROM teammember
WHERE teamName='${teamName}';

-- PROJECTION
SELECT firstName, lastName, nationality, teamName
FROM teammember;

-- JOIN
SELECT p.prizeID, t.teamName
FROM team t, prize p
WHERE t.prizeID = p.prizeID;

-- AGGREGATION WITH GROUP BY
SELECT t.countryOfOrigin, count(t.countryOfOrigin)
FROM team t
WHERE t.prizeID < 8
GROUP BY t.countryOfOrigin;

-- AGGREGATION WITH HAVING
SELECT MAX(prizeValueUSD)
FROM prize
HAVING MIN(prizeID);

-- NESTED AGGREGATION WITH GROUP BY
SELECT p.prizeID, t.teamName, t.countryOfOrigin, p.prizeValueUSD
FROM prize p, team t
WHERE t.prizeID = p.prizeID 
	AND (
		p.prizeID = (SELECT
				MIN(t.prizeID)
				FROM
				team t) 
		OR
		p.prizeID = (SELECT
			MAX(t.prizeID)
			FROM
			team t)
	)
GROUP BY p.prizeID

-- DIVISION
SELECT tm.firstName, tm.lastName, tm.nationality, tm.teamName
FROM teammember tm
WHERE EXISTS ( 
	SELECT t.countryofOrigin								
	FROM team t
	WHERE tm.nationality = t.countryOfOrigin
);

-- MORE POPULATING QUERIES