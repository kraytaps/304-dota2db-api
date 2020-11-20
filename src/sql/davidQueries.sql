-- Creating stage table
CREATE TABLE stage (
  stageID INT NOT NULL AUTO_INCREMENT,
  stageName varchar(255),
  PRIMARY KEY (stageID));
  
-- Creating teamPlaysOnStage table
CREATE TABLE teamPlaysOnStage (
  PRIMARY KEY (teamName, stageID),
  FOREIGN KEY (teamName) REFERENCES team(teamName),
  FOREIGN KEY (stageID) REFERENCES stage(stageID));

/*    
TABLE REMOVED DUE TO REDUNDANCY
-- Creating teamPlaysSeriesOfMatches table
CREATE TABLE teamPlaysSeriesOfMatches (
  opposingTeam varchar(255),
  PRIMARY KEY (teamName, gameID),
  FOREIGN KEY (teamName) REFERENCES team(teamName),
  FOREIGN KEY (gameID) REFERENCES seriesOfMatchesPlayedOn(seriesID));
*/  
      
-- Creating teamMember table
CREATE TABLE teamMember (
firstName varchar(255),
lastName varchar(255),
nationality varchar(255),
memberID INT NOT NULL AUTO_INCREMENT,
PRIMARY KEY (memberID),
FOREIGN KEY (teamName) REFERENCES team(teamName));
      
-- Creating manager table
CREATE TABLE manager (
  PRIMARY KEY (memberID),
  FOREIGN KEY (memberID) REFERENCES teamMember(memberID));

-- Creating coach table
CREATE TABLE coach (
  PRIMARY KEY (memberID),
  FOREIGN KEY (memberID) REFERENCES teamMember(memberID));

-- Creating player table
CREATE TABLE player (
  username varchar(255),
  teamPosition varchar(255),
  isCaptain BIT,
  PRIMARY KEY (memberID, username),
  FOREIGN KEY (memberID) REFERENCES teamMember(memberID));

/*
FOLLOWING TWO TABLES REMOVED FOR REDUNDANCY WITH teamMember

-- Creating playerManagedBy
CREATE TABLE playerManagedBy (
  PRIMARY KEY (playerID, managerID),
  FOREIGN KEY (playerID) REFERENCES teamMember(memberID),
  FOREIGN KEY (managerID) REFERENCES teamMember(memberID));

-- Creating playerCoachedBy
CREATE TABLE playerManagedBy (
  PRIMARY KEY (playerID, coachID),
  FOREIGN KEY (playerID) REFERENCES teamMember(memberID),
  FOREIGN KEY (coachID) REFERENCES teamMember(memberID));
*/  
  
  