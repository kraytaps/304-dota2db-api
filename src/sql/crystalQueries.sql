-- Creating Sponsor table
CREATE TABLE sponsor (
  companyName VARCHAR(255) NOT NULL,
  PRIMARY KEY (companyName));

-- Creating Prize table
CREATE TABLE IF NOT EXISTS prize (
		prizeID INT AUTO_INCREMENT,
		name varchar(255),
		prizeValueUSD INT,
		PRIMARY KEY (prizeID)
	);

-- Creating Stage table
CREATE TABLE stage (
  stageID INT NOT NULL,
  stageName VARCHAR(255) NULL,
  PRIMARY KEY (stageID));


-- Creating Team table
CREATE TABLE team (
  teamName VARCHAR(255) NOT NULL,
  countryOfOrigin VARCHAR(255) NOT NULL,
  prizeID INT NOT NULL,
  PRIMARY KEY (teamName, countryOfOrigin, prizeID),
  FOREIGN KEY (prizeID) REFERENCES Prize(prize));

  
-- Creating PrizeReceivedByTeam table
CREATE TABLE prizereceivedbyteam (
  prizeID INT NOT NULL,
  teamName VARCHAR(255) NOT NULL,
  PRIMARY KEY (prizeID, teamName),
  FOREIGN KEY (prizeID) REFERENCES Prize(prizeID),
  FOREIGN KEY (teamName) REFERENCES Team(teamName));

-- Creating SeriesOfMatchesPlayedOn table
CREATE TABLE seriesofmatchesplayedon (
  seriesID INT NOT NULL,
  homeTeam VARCHAR(255),
  awayTeam VARCHAR(255),
  seriesWinner VARCHAR(255),
  stageID INT NOT NULL,
  PRIMARY KEY (seriesID),
  FOREIGN KEY (stageID) REFERENCES Stage(stageID));
 
-- Creating ConsistsOfMatch table
CREATE TABLE consistsofmatch (
  winningTeam VARCHAR(255) NOT NULL,
  seriesID INT NOT NULL,
  PRIMARY KEY (winningTeam, seriesID),
  FOREIGN KEY(seriesID) REFERENCES seriesofmatchesplayedon(seriesID));
  

-- Inserts for Sponsors
INSERT INTO sponsor (companyName) VALUES ('TCL');
INSERT INTO sponsor (companyName) VALUES ('DHL');
INSERT INTO sponsor (companyName) VALUES ('Tinder');
INSERT INTO sponsor (companyName) VALUES ('HyperX');
INSERT INTO sponsor (companyName) VALUES ('Rivalry');



-- Inserts for prizes
INSERT INTO prize (prize) VALUES ('15603133');
INSERT INTO prize (prize) VALUES ('4458038');
INSERT INTO prize (prize) VALUES ('3086334');
INSERT INTO prize (prize) VALUES ('2057556');
INSERT INTO prize (prize) VALUES ('1200241');
INSERT INTO prize (prize) VALUES ('857315');
INSERT INTO prize (prize) VALUES ('685852');
INSERT INTO prize (prize) VALUES ('514389');
INSERT INTO prize (prize) VALUES ('85731');

 
-- Inserts for team 
INSERT INTO team (teamName, countryOfOrigin) VALUES ('OG', 'Europe');
INSERT INTO team (teamName, countryOfOrigin) VALUES ('Team Liquid', 'Europe');
INSERT INTO team (teamName, countryOfOrigin) VALUES ('PSG.LGD', 'China');
INSERT INTO team (teamName, countryOfOrigin) VALUES ('Team Secret', 'Europe');
INSERT INTO team (teamName, countryOfOrigin) VALUES ('Vici Gaming', 'China');
INSERT INTO team (teamName, countryOfOrigin) VALUES ('Evil Geniuses', 'USA');
INSERT INTO team (teamName, countryOfOrigin) VALUES ('Infamous', 'Peru');
INSERT INTO team (teamName, countryOfOrigin) VALUES ('Royal Never Give Up', 'China');
INSERT INTO team (teamName, countryOfOrigin) VALUES ('Mineski', 'Philippines');
INSERT INTO team (teamName, countryOfOrigin) VALUES ('Newbee', 'China');
INSERT INTO team (teamName, countryOfOrigin) VALUES ('TNC Predator', 'Philippines');
INSERT INTO team (teamName, countryOfOrigin) VALUES ('Virtus.pro', 'Russia');
INSERT INTO team (teamName, countryOfOrigin) VALUES ('Natus Vincere', 'Ukraine');
INSERT INTO team (teamName, countryOfOrigin) VALUES ('Keen Gaming', 'China');
INSERT INTO team (teamName, countryOfOrigin) VALUES ('Fnatic', 'Malaysia');
INSERT INTO team (teamName, countryOfOrigin) VALUES ('Alliance', 'Sweden');
INSERT INTO team (teamName, countryOfOrigin) VALUES ('Ninjas in Pyjamas', 'Sweden');
INSERT INTO team (teamName, countryOfOrigin) VALUES ('Chaos Esports Club', 'United States'; 


-- Inserts into Stage
INSERT INTO stage (stageID, stageName) VALUES ('1', 'lb1');
INSERT INTO stage (stageID, stageName) VALUES ('2', 'ub1lb2');
INSERT INTO stage (stageID, stageName) VALUES ('3', 'lb3');
INSERT INTO stage (stageID, stageName) VALUES ('4', 'ub2lb4');
INSERT INTO stage (stageID, stageName) VALUES ('5', 'lb5');
INSERT INTO stage (stageID, stageName) VALUES ('6', 'ub3lb6');
INSERT INTO stage (stageID, stageName) VALUES ('7', 'finals');

-- Inserts into PrizeRecievedByTeam
INSERT INTO prizereceivedbyteam (prizeID, teamName) VALUES ('15603133', 'OG');
INSERT INTO prizereceivedbyteam (prizeID, teamName) VALUES ('4458038', 'Team Liquid');
INSERT INTO prizereceivedbyteam (prizeID, teamName) VALUES ('3086334', 'PSG.LGD');
INSERT INTO prizereceivedbyteam (prizeID, teamName) VALUES ('2057556', 'Team Secret');
INSERT INTO prizereceivedbyteam (prizeID, teamName) VALUES ('1200241', 'Vici Gaming');
INSERT INTO prizereceivedbyteam (prizeID, teamName) VALUES ('1200241', 'Evil Geniuses');
INSERT INTO prizereceivedbyteam (prizeID, teamName) VALUES ('857315', 'Infamous');
INSERT INTO prizereceivedbyteam (prizeID, teamName) VALUES ('857315', 'Royal Never Give Up');
INSERT INTO prizereceivedbyteam (prizeID, teamName) VALUES ('685852', 'Mineski');
INSERT INTO prizereceivedbyteam (prizeID, teamName) VALUES ('685852', 'Newbee');
INSERT INTO prizereceivedbyteam (prizeID, teamName) VALUES ('685852', 'TNC Predator');
INSERT INTO prizereceivedbyteam (prizeID, teamName) VALUES ('685852', 'Virtus.pro');
INSERT INTO prizereceivedbyteam (prizeID, teamName) VALUES ('514389', 'Natus Vincere');
INSERT INTO prizereceivedbyteam (prizeID, teamName) VALUES ('514389', 'Keen Gaming');
INSERT INTO prizereceivedbyteam (prizeID, teamName) VALUES ('514389', 'Fnatic');
INSERT INTO prizereceivedbyteam (prizeID, teamName) VALUES ('514389', 'Alliance');
INSERT INTO prizereceivedbyteam (prizeID, teamName) VALUES ('85731', 'Ninjas in Pyjamas');
INSERT INTO prizereceivedbyteam (prizeID, teamName) VALUES ('85731', 'Chaos Esports Club');




-- Inserts into ConsistsOfMatch
INSERT INTO consistsofmatch (winningTeam, seriesID) VALUES ('Royal Never Give Up', '1');
INSERT INTO consistsofmatch (winningTeam, seriesID) VALUES ('Team Liquid', '1');
INSERT INTO consistsofmatch (winningTeam, seriesID) VALUES ('Infamous', '1');
INSERT INTO consistsofmatch (winningTeam, seriesID) VALUES ('Mineski', '1');
INSERT INTO consistsofmatch (winningTeam, seriesID) VALUES ('PSG.LGD', '2');
INSERT INTO consistsofmatch (winningTeam, seriesID) VALUES ('Vici Gaming', '2');
INSERT INTO consistsofmatch (winningTeam, seriesID) VALUES ('OG', '2');
INSERT INTO consistsofmatch (winningTeam, seriesID) VALUES ('Evil Geniuses', '2');
INSERT INTO consistsofmatch (winningTeam, seriesID) VALUES ('Royal Never Give Up', '2');
INSERT INTO consistsofmatch (winningTeam, seriesID) VALUES ('Team Liquid', '2');
INSERT INTO consistsofmatch (winningTeam, seriesID) VALUES ('Infamous', '2');
INSERT INTO consistsofmatch (winningTeam, seriesID) VALUES ('Team Secret', '2');
INSERT INTO consistsofmatch (winningTeam, seriesID) VALUES ('Team Liquid', '3');
INSERT INTO consistsofmatch (winningTeam, seriesID) VALUES ('Team Secret', '3');
INSERT INTO consistsofmatch (winningTeam, seriesID) VALUES ('PSG.LGD', '4');
INSERT INTO consistsofmatch (winningTeam, seriesID) VALUES ('OG', '4');
INSERT INTO consistsofmatch (winningTeam, seriesID) VALUES ('Team Liquid', '4');
INSERT INTO consistsofmatch (winningTeam, seriesID) VALUES ('Team Secret', '4');
INSERT INTO consistsofmatch (winningTeam, seriesID) VALUES ('Team Liquid', '5');
INSERT INTO consistsofmatch (winningTeam, seriesID) VALUES ('OG', '6');
INSERT INTO consistsofmatch (winningTeam, seriesID) VALUES ('Team Liquid', '6');
INSERT INTO consistsofmatch (winningTeam, seriesID) VALUES ('OG', '7');