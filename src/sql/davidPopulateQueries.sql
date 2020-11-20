-- Stage
INSERT INTO stage (stageName) VALUES 
('Group Stage'), 
('Main Event');

-- teamPlaysOnStage
INSERT INTO teamPlaysOnStage (teamName, stageID) VALUES
((SELECT teamName FROM team), (SELECT stageID from stage WHERE stageName = 'Group Stage')),
((SELECT teamName FROM team), (SELECT stageID from stage WHERE stageName = 'Main Event'));

-- teamMember
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
-- Alliance
('Johnathon', 'Berg', 'Sweden', 'Alliance'),
('Maria', 'Gunina', 'Russia', 'Alliance'),
('Michael', 'Vu', 'Sweden', 'Alliance'),
('Maximilian', 'Brocker', 'Germany', 'Alliance'),
('Samuel', 'Svahn', 'Sweden', 'Alliance'),
('Tommy', 'Le', 'Norway', 'Alliance'),
('Aydin', 'Sarkohi', 'Belarus', 'Alliance'),
-- Mineski
('Zak', 'Holman', 'Australia', 'Mineski'),
('Nikolay', 'Nikolov', 'Bulgaria', 'Mineski'),
('Kam', 'Boon Seng', 'Malaysia', 'Mineski'),
('Damien', 'Chok', 'Australia', 'Mineski'),
('Ryan', 'Jay Qui', 'Philippines', 'Mineski'),
('Michael', 'Ross', 'Philippines', 'Mineski'),
-- Team Liquid
('William', 'Lee', 'USA', 'Team Liquid'),
('Amer', 'Al-Barkawi', 'Jordan', 'Team Liquid'),
('Aliwi', 'Omar', 'Romania', 'Team Liquid'),
('Ivan', 'Ivanov', 'Bulgaria', 'Team Liquid'),
('Maroun', 'Merhej', 'Lebanon', 'Team Liquid'),
('Kuro', 'Salehi Takhasomi', 'Germany', 'Team Liquid'),
-- Keen Gaming
('Chen', 'Yuxuan', 'China', 'Keen Gaming'),
('Wu', 'Junying', 'China', 'Keen Gaming'),
('Wang', 'Zhiyong', 'China', 'Keen Gaming'),
('Zhai', 'Jingkai', 'China', 'Keen Gaming'),
('Ren', 'Yangwei', 'China', 'Keen Gaming'),
('Hu', 'Liangzhi', 'China', 'Keen Gaming'),
('Song', 'Runxi', 'China', 'Keen Gaming'),
-- Chaos Esports Club
('Cheng', 'Jia Hao', 'Malaysia', 'Chaos Esports Club'),
('Lasse', 'Urpalainen', 'Finland', 'Chaos Esports Club'),
('Maurice', 'Gutmann', 'Germany', 'Chaos Esports Club'),
('Milan', 'Kozomara', 'Bosnia and Herzegovina', 'Chaos Esports Club'),
('Rasmus', 'Berth Filipsen', 'Denmark', 'Chaos Esports Club'),
-- OG
('Titouan', 'Merloz', 'France', 'OG'),
('Mourtada', 'Alkarbalaie', 'Denmark', 'OG'),
('Anathan', 'Pham', 'Australia', 'OG'),
('Topias', 'Taavitsainen', 'Finland', 'OG'),
('Sebastien', 'Debs', 'France', 'OG'),
('Jesse', 'Vainikka', 'Finland', 'OG'),
('Johan', 'Sundstein', 'Denmark', 'OG'),
-- Vici Gaming
('Xu', 'Xiaoyun', 'China', 'Vici Gaming'),
('Zhang', 'Chengjun', 'China', 'Vici Gaming'),
('Zeng', 'Jiaoyang', 'China', 'Vici Gaming'),
('Zhou', 'Haiyang', 'China', 'Vici Gaming'),
('Pan', 'Yi', 'China', 'Vici Gaming'),
('Ding', 'Cong', 'China', 'Vici Gaming'),
-- Evil Geniuses
('Kanishka', 'Sosale', 'USA', 'Evil Geniuses'),
('Wilson', 'Teng', 'Canada', 'Evil Geniuses'),
('Artour', 'Babaev', 'Canada', 'Evil Geniuses'),
('Sumail', 'Hassan', 'Pakistan', 'Evil Geniuses'),
('Gustav', 'Magnusson', 'Sweden', 'Evil Geniuses'),
('Andreas', 'Nielsen', 'Denmark', 'Evil Geniuses'),
('Tal', 'Aizik', 'Israel', 'Evil Geniuses'),
-- Virtus.pro
('Ivan', 'Antonov', 'Ukraine', 'Virtus.pro'),
('Dmitriy', 'Shishkov', 'Russia', 'Virtus.pro'),
('Roman', 'Kushnarev', 'Russia', 'Virtus.pro'),
('Vladimir', 'Minenko', 'Ukraine', 'Virtus.pro'),
('Pavel', 'Khvastunov', 'Russia', 'Virtus.pro'),
('Vladimir', 'Nikogosyan', 'Russia', 'Virtus.pro'),
('Alexei', 'Berezin', 'Russia', 'Virtus.pro'),
-- Infamous
('Hector Antonio', 'Rodriguez', 'Peru', 'Infamous'),
('Jean Pierre', 'Gonzales', 'Peru', 'Infamous'),
('Adrian', 'Cespedes Dobles', 'Bolivia', 'Infamous'),
('Elvis', 'De la Cruz Pena', 'Peru', 'Infamous'),
('Steven', 'Vargas', 'Peru', 'Infamous'),
-- Fnatic
('Lee', 'Jeong-jae', 'South Korea', 'Fnatic'),
('Anucha', 'Jirawong', 'Thailand', 'Fnatic'),
('Abed Azel', 'Yusop', 'Philippines', 'Fnatic'),
('Daryl Koh', 'Pei Xiang', 'Singapore', 'Fnatic'),
('Djardel', 'Mampusti', 'Phillipines', 'Fnatic'),
('Kim', 'Doo-young', 'South Korea', 'Fnatic'),
-- Natus Vincere
('Sergey', 'Bykovsky', 'Ukraine', 'Natus Vincere'),
('Igor', 'Sydorenko', 'Ukraine', 'Natus Vincere'),
('Vladyslav', 'Krystanek', 'Ukraine', 'Natus Vincere'),
('Idan', 'Verdanian', 'Israel', 'Natus Vincere'),
('Evgenily', 'Ree', 'Kyrgyzstan', 'Natus Vincere'),
('Bakyt', 'Emilzhanov', 'Kyrgyzstan', 'Natus Vincere'),
('Akbar', 'Butaev', 'Russia', 'Natus Vincere'),
-- Royal Never Give Up
('Wang', 'Jiao', 'China', 'Royal Never Give Up'),
('Lu', 'Hao', 'China', 'Royal Never Give Up'),
('Du', 'Peng', 'China', 'Royal Never Give Up'),
('Gao', 'Zhenxiong', 'China', 'Royal Never Give Up'),
('Su', 'Lei', 'China', 'Royal Never Give Up'),
('Zhang', 'Zhicheng', 'China', 'Royal Never Give Up'),
('Teu', 'Soon Chuan', 'Malaysia', 'Royal Never Give Up'),
-- Ninjas in Pyjamas
('Niklas', 'Koskinen', 'Finland', 'Ninjas in Pyjamas'),
('Allen', 'Cook', 'United Kingdom', 'Ninjas in Pyjamas'),
('Marcus', 'Hoelgaard', 'Denmark', 'Ninjas in Pyjamas'),
('Adrian', 'Trinks', 'Germany', 'Ninjas in Pyjamas'),
('Neta', 'Shapira', 'Israel', 'Ninjas in Pyjamas'),
('Martin', 'Sazdov', 'North Macedonia', 'Ninjas in Pyjamas'),
('Peter', 'Dager', 'United Kingdom', 'Ninjas in Pyjamas');

-- manager
INSERT INTO manager (memberID) VALUES
((SELECT memberID FROM teamMember WHERE firstName='Zhang' AND lastName='Ning' AND teamName='PSG.LGD')),
((SELECT memberID FROM teamMember WHERE firstName='Matthew' AND lastName='Bailey' AND teamName='Team Secret')),
((SELECT memberID FROM teamMember WHERE firstName='Zhu' AND lastName='Chao' AND teamName='Newbee')),
((SELECT memberID FROM teamMember WHERE firstName='Arjay' AND lastName='Domdom' AND teamName='TNC Predator')),
((SELECT memberID FROM teamMember WHERE firstName='Maria' AND lastName='Gunina' AND teamName='Alliance')),
((SELECT memberID FROM teamMember WHERE firstName='Zak' AND lastName='Holman' AND teamName='Mineski')),
((SELECT memberID FROM teamMember WHERE firstName='Wu' AND lastName='Junying' AND teamName='Keen Gaming')),
((SELECT memberID FROM teamMember WHERE firstName='Mourtada' AND lastName='Alkarbalaie' AND teamName='OG')),
((SELECT memberID FROM teamMember WHERE firstName='Xu' AND lastName='Xiaoyun' AND teamName='Vici Gaming')),
((SELECT memberID FROM teamMember WHERE firstName='Wilson' AND lastName='Teng' AND teamName='Evil Geniuses')),
((SELECT memberID FROM teamMember WHERE firstName='Dmitriy' AND lastName='Shishkov' AND teamName='Virtus.pro')),
((SELECT memberID FROM teamMember WHERE firstName='Sergey' AND lastName='Bykovsky' AND teamName='Natus Vincere')),
((SELECT memberID FROM teamMember WHERE firstName='Igor' AND lastName='Sydorenko' AND teamName='Natus Vincere')),
((SELECT memberID FROM teamMember WHERE firstName='Lu' AND lastName='Hao' AND teamName='Royal Never Give Up')),
((SELECT memberID FROM teamMember WHERE firstName='Allen' AND lastName='Cook' AND teamName='Ninjas in Pyjamas'));

-- coach
INSERT INTO coach (memberID) VALUES
((SELECT memberID FROM teamMember WHERE firstName='Wang' AND lastName='Changqi' AND teamName='PSG.LGD')),
((SELECT memberID FROM teamMember WHERE firstName='Lee' AND lastName='Seung Gon' AND teamName='Team Secret')),
((SELECT memberID FROM teamMember WHERE firstName='Li' AND lastName='Guo' AND teamName='Newbee')),
((SELECT memberID FROM teamMember WHERE firstName='Kim' AND lastName='Yong-min' AND teamName='TNC Predator')),
((SELECT memberID FROM teamMember WHERE firstName='Johnathon' AND lastName='Berg' AND teamName='Alliance')),
((SELECT memberID FROM teamMember WHERE firstName='William' AND lastName='Lee' AND teamName='Team Liquid')),
((SELECT memberID FROM teamMember WHERE firstName='Chen' AND lastName='Yuxuan' AND teamName='Keen Gaming')),
((SELECT memberID FROM teamMember WHERE firstName='Titouan' AND lastName='Merloz' AND teamName='OG')),
((SELECT memberID FROM teamMember WHERE firstName='Kanishka' AND lastName='Sosale' AND teamName='Evil Geniuses')),
((SELECT memberID FROM teamMember WHERE firstName='Ivan' AND lastName='Antonov' AND teamName='Virtus.pro')),
((SELECT memberID FROM teamMember WHERE firstName='Lee' AND lastName='Jeong-jae' AND teamName='Fnatic')),
((SELECT memberID FROM teamMember WHERE firstName='Wang' AND lastName='Jiao' AND teamName='Royal Never Give Up')),
((SELECT memberID FROM teamMember WHERE firstName='Niklas' AND lastName='Koskinen' AND teamName='Ninjas in Pyjamas'));

-- player
INSERT INTO player (username, teamPositon, isCaptain, memberID) VALUES
-- PSG.LGD
('Ame', '1', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Wang' AND lastName='Chunyu' AND teamName='PSG.LGD')),
('Somnus- M', '2', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Lu' AND lastName='Yao' AND teamName='PSG.LGD')),
('Chalice', '3', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Yang' AND lastName='Shenyi' AND teamName='PSG.LGD')),
('fy', '4', TRUE, (SELECT memberID FROM teamMember WHERE firstName='Xu' AND lastName='Linsen' AND teamName='PSG.LGD')),
('xNova', '5', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Jian Wei' AND lastName='Yap' AND teamName='PSG.LGD')),
-- Team Secret
('Nisha', '1', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Michal' AND lastName='Jankowski' AND teamName='Team Secret')),
('MidOne', '2', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Yeik' AND lastName='Nai Zheng' AND teamName='Team Secret')),
('zai', '3', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Ludwig' AND lastName='Wahlberg' AND teamName='Team Secret')),
('YapzOr', '4', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Yazied' AND lastName='Jaradat' AND teamName='Team Secret')),
('Puppey', '5', TRUE, (SELECT memberID FROM teamMember WHERE firstName='Clement' AND lastName='Ivanov' AND teamName='Team Secret')),
-- Newbee
('YawaR', '1', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Yawar' AND lastName='Hassan' AND teamName='Newbee')),
('CCnC', '2', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Quinn' AND lastName='Callahan' AND teamName='Newbee')),
('Sneyking', '3', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Jingjun' AND lastName='Wu' AND teamName='Newbee')),
('MSS', '4', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Arif' AND lastName='Anwar' AND teamName='Newbee')),
('pieliedie', '5', TRUE, (SELECT memberID FROM teamMember WHERE firstName='Johan' AND lastName='Astrom' AND teamName='Newbee')),
-- TNC Predator
('Gabbi', '1', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Kim' AND lastName='Villafuerte' AND teamName='TNC Predator')),
('Armel', '2', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Armel Paul' AND lastName='Tabios' AND teamName='TNC Predator')),
('Kuku', '3', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Carlo' AND lastName='Palad' AND teamName='TNC Predator')),
('Tims', '4', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Timothy' AND lastName='Randrup' AND teamName='TNC Predator')),
('eyyou', '5', TRUE, (SELECT memberID FROM teamMember WHERE firstName='Nico' AND lastName='Barcelon' AND teamName='TNC Predator')),
-- Alliance
('miCKe', '1', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Michael' AND lastName='Vu' AND teamName='Alliance')),
('qojqva', '2', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Maximillian' AND lastName='Brocker' AND teamName='Alliance')),
('Boxi', '3', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Samuel' AND lastName='Svahn' AND teamName='Alliance')),
('Taiga', '4', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Tommy' AND lastName='Le' AND teamName='Alliance')),
('iNSaNiA', '5', TRUE, (SELECT memberID FROM teamMember WHERE firstName='Aydin' AND lastName='Sarkohi' AND teamName='Alliance')),
-- Mineski
('Nikobaby', '1', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Nikolay' AND lastName='Nikolov' AND teamName='Mineski')),
('Moon', '2', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Kam' AND lastName='Boon Seng' AND teamName='Mineski')),
('kpii', '3', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Damien' AND lastName='Chok' AND teamName='Mineski')),
('Bimbo', '4', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Ryan' AND lastName='Jay Qui' AND teamName='Mineski')),
('ninjaboogie', '5', TRUE, (SELECT memberID FROM teamMember WHERE firstName='Michael' AND lastName='Ross' AND teamName='Mineski')),
-- Team Liquid
('Miracle-', '1', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Amer' AND lastName='Al-Barkawi' AND teamName='Team Liquid')),
('w33', '2', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Aliwi' AND lastName='Omar' AND teamName='Team Liquid')),
('MinD_ContRoL', '3', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Ivan' AND lastName='Ivanov' AND teamName='Team Liquid')),
('GH', '4', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Maroun' AND lastName='Merhej' AND teamName='Team Liquid')),
('KuroKy', '5', TRUE, (SELECT memberID FROM teamMember WHERE firstName='Kuro' AND lastName='Salehi Takhasomi' AND teamName='Team Liquid')),
-- Keen Gaming
('old chicken', '1', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Wang' AND lastName='Zhiyong' AND teamName='Keen Gaming')),
('--', '2', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Zhai' AND lastName='Jingkai' AND teamName='Keen Gaming')),
('eLeVeN', '3', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Ren' AND lastName='Yangwei' AND teamName='Keen Gaming')),
('Kaka', '4', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Hu' AND lastName='Liangzhi' AND teamName='Keen Gaming')),
('dark', '5', TRUE, (SELECT memberID FROM teamMember WHERE firstName='Song' AND lastName='Runxi' AND teamName='Keen Gaming')),
-- Chaos Esports Club
('vtFaded', '1', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Cheng' AND lastName='Jia Hao' AND teamName='Chaos Esports Club')),
('MATUMBAMAN', '2', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Lasse' AND lastName='Urpalainen' AND teamName='Chaos Esports Club')),
('KheZu', '3', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Maurice' AND lastName='Gutmann' AND teamName='Chaos Esports Club')),
('MiLAN', '4', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Milan' AND lastName='Kozomara' AND teamName='Chaos Esports Club')),
('MISERY', '5', TRUE, (SELECT memberID FROM teamMember WHERE firstName='Rasmus' AND lastName='Berth Filipsen' AND teamName='Chaos Esports Club')),
-- OG
('ana', '1', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Anathan' AND lastName='Pham' AND teamName='OG')),
('Topson', '2', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Topias' AND lastName='Taavitsainen' AND teamName='OG')),
('Ceb', '3', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Sebastien' AND lastName='Debs' AND teamName='OG')),
('JerAx', '4', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Jesse' AND lastName='Vainikka' AND teamName='OG')),
('N0tail', '5', TRUE, (SELECT memberID FROM teamMember WHERE firstName='Johan' AND lastName='Sundstein' AND teamName='OG')),
-- Vici Gaming
('Paparazi', '1', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Zhang' AND lastName='Chengjun' AND teamName='Vici Gaming')),
('Ori', '2', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Zeng' AND lastName='Jiaoyang' AND teamName='Vici Gaming')),
('Yang', '3', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Zhou' AND lastName='Haiyang' AND teamName='Vici Gaming')),
('Fade', '4', TRUE, (SELECT memberID FROM teamMember WHERE firstName='Pan' AND lastName='Yi' AND teamName='Vici Gaming')),
('Dy', '5', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Ding' AND lastName='Cong' AND teamName='Vici Gaming')),
-- Evil Geniuses
('Arteezy', '1', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Artour' AND lastName='Babaev' AND teamName='Evil Geniuses')),
('SumaiL', '2', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Sumail' AND lastName='Hassan' AND teamName='Evil Geniuses')),
('s4', '3', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Gustav' AND lastName='Magnusson' AND teamName='Evil Geniuses')),
('Cr1t-', '4', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Andreas' AND lastName='Nielsen' AND teamName='Evil Geniuses')),
('Fly', '5', TRUE, (SELECT memberID FROM teamMember WHERE firstName='Tal' AND lastName='Aizik' AND teamName='Evil Geniuses')),
-- Virtus.pro
('RAMZES666', '1', TRUE, (SELECT memberID FROM teamMember WHERE firstName='Roman' AND lastName='Kushnarev' AND teamName='Virtus.pro')),
('No[o]ne', '2', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Vladimir' AND lastName='Minenko' AND teamName='Virtus.pro')),
('9pasha', '3', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Pavel' AND lastName='Khvastunov' AND teamName='Virtus.pro')),
('RodjER', '4', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Vladimir' AND lastName='Nikogosyan' AND teamName='Virtus.pro')),
('Solo', '5', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Alexei' AND lastName='Berezin' AND teamName='Virtus.pro')),
-- Infamous
('K1', '1', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Hector Antonio' AND lastName='Rodriguez' AND teamName='Infamous')),
('Chris Luck', '2', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Jean Pierre' AND lastName='Gonzales' AND teamName='Infamous')),
('Wisper', '3', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Adrian' AND lastName='Cespedes Dobles' AND teamName='Infamous')),
('Scofield', '4', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Elvis' AND lastName='De la Cruz Pena' AND teamName='Infamous')),
('Stinger', '5', TRUE, (SELECT memberID FROM teamMember WHERE firstName='Steven' AND lastName='Vargas' AND teamName='Infamous')),
-- Fnatic
('Jabz', '1', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Anucha' AND lastName='Jirawong' AND teamName='Fnatic')),
('Abed', '2', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Abed Azel' AND lastName='Yusop' AND teamName='Fnatic')),
('iceiceice', '3', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Daryl Koh' AND lastName='Pei Xiang' AND teamName='Fnatic')),
('DJ', '4', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Djardel' AND lastName='Mampusti' AND teamName='Fnatic')),
('DuBu', '5', TRUE, (SELECT memberID FROM teamMember WHERE firstName='Kim' AND lastName='Doo-young' AND teamName='Fnatic')),
-- Natus Vincere
('Crystallize', '1', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Vladyslav' AND lastName='Krystanek' AND teamName='Natus Vincere')),
('MagicaL', '2', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Idan' AND lastName='Vardanian' AND teamName='Natus Vincere')),
('Blizzy', '3', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Evgeniy' AND lastName='Ree' AND teamName='Natus Vincere')),
('Zayac', '4', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Bakyt' AND lastName='Emilzhanov' AND teamName='Natus Vincere')),
('SoNNeikO', '5', TRUE, (SELECT memberID FROM teamMember WHERE firstName='Akbar' AND lastName='Butaev' AND teamName='Natus Vincere')),
-- Royal Never Give Up
('Monet', '1', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Du' AND lastName='Peng' AND teamName='Royal Never Give Up')),
('Setsu', '2', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Gao' AND lastName='Zhenxiong' AND teamName='Royal Never Give Up')),
('Flyby', '3', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Su' AND lastName='Lei' AND teamName='Royal Never Give Up')),
('LaNm', '4', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Zhang' AND lastName='Zhicheng' AND teamName='Royal Never Give Up')),
('ah fu', '5', TRUE, (SELECT memberID FROM teamMember WHERE firstName='Tue' AND lastName='Soon Chuan' AND teamName='Royal Never Give Up')),
-- Ninjas in Pyjamas
('Ace', '1', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Marcus' AND lastName='Hoelgaard' AND teamName='Ninjas in Pyjamas')),
('Fata', '2', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Adrian' AND lastName='Trinks' AND teamName='Ninjas in Pyjamas')),
('33', '3', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Neta' AND lastName='Shapira' AND teamName='Ninjas in Pyjamas')),
('Saksa', '4', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Martin' AND lastName='Sazdov' AND teamName='Ninjas in Pyjamas')),
('ppd', '5', FALSE, (SELECT memberID FROM teamMember WHERE firstName='Peter' AND lastName='Dager' AND teamName='Ninjas in Pyjamas'));

