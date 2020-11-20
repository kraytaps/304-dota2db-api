DROP TABLE consistsofmatch;
DROP TABLE prizereceivedbyteam;
DROP TABLE seriesofmatchesplayedon;
DROP TABLE sponsor;
DROP TABLE stage;
DROP TABLE teammember;
DROP TABLE team;
DROP TABLE prize;

INSERT INTO prize (prizeName, prizeValueInUSD) VALUES ('1st', 15603133);
INSERT INTO prize (prizeName, prizeValueInUSD) VALUES ('2nd', 4458038);
INSERT INTO prize (prizeName, prizeValueInUSD) VALUES ('3rd', 3086334);
INSERT INTO prize (prizeName, prizeValueInUSD) VALUES ('4th', 2057556);
INSERT INTO prize (prizeName, prizeValueInUSD) VALUES ('5th', 1200241);
INSERT INTO prize (prizeName, prizeValueInUSD) VALUES ('6th', 1200241);
INSERT INTO prize (prizeName, prizeValueInUSD) VALUES ('7th', 857315);
INSERT INTO prize (prizeName, prizeValueInUSD) VALUES ('8th', 857315);
INSERT INTO prize (prizeName, prizeValueInUSD) VALUES ('9th', 685852);
INSERT INTO prize (prizeName, prizeValueInUSD) VALUES ('10th', 685852);
INSERT INTO prize (prizeName, prizeValueInUSD) VALUES ('11th', 685852);
INSERT INTO prize (prizeName, prizeValueInUSD) VALUES ('12th', 685852);
INSERT INTO prize (prizeName, prizeValueInUSD) VALUES ('13th', 514389);
INSERT INTO prize (prizeName, prizeValueInUSD) VALUES ('14th', 514389);
INSERT INTO prize (prizeName, prizeValueInUSD) VALUES ('15th', 514389);
INSERT INTO prize (prizeName, prizeValueInUSD) VALUES ('16th', 514389);
INSERT INTO prize (prizeName, prizeValueInUSD) VALUES ('17th', 85731);
INSERT INTO prize (prizeName, prizeValueInUSD) VALUES ('18th', 85731);

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
('Nico', 'Barcelon', 'Philippines', 'TNC Predator'),