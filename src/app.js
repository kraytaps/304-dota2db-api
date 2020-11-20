const CreateQ = require('./constants/createQueries');
const GetQ = require('./constants/getQueries');

const express = require('express');
const mysql = require('mysql');
const cors = require('cors');

const app = express();
app.use(cors());

app.get('/', (req, res) => {
	res.send("Connected...");
})

// Create connection
const db = mysql.createConnection({
	host     : 'localhost',
	user     : 'root',
	database: 'dota2db',
	multipleStatements: true
});

/**
 * SETUP QUERIES
 */

// Connect
db.connect((err) => {
	if(err){
		console.log(err);
	}
	console.log('MySql Connected...');
});

// Create DB
app.get('/setup/db', (req, res) => {
	db.query(CreateQ.CREATE_DB, (err, result) => {
		if(err) throw err;
		console.log(result);
		res.send('Database instantiated if not already');
	});
});

// Create prize table
app.get('/setup/prize', (req, res) => {
	db.query(CreateQ.CREATE_PRIZE, (err, result) => {
		if (err) throw err;
		console.log(result);
		res.send('Prizes table created');
	})
})

// Create teams table
app.get('/setup/team', (req, res) => {
	db.query(CreateQ.CREATE_TEAM, (err, result) => {
		if (err) throw err;
		console.log(result);
		res.send('Team table created');
	})
})

app.get('/setup/sponsor', (req, res) => {
	db.query(CreateQ.CREATE_SPONSOR, (err, result) => {
		if (err) throw err;
		console.log(result);
		res.send('Sponsor table created');
	})
})

app.get('/setup/stage', (req, res) => {
	db.query(CreateQ.CREATE_STAGE, (err, result) => {
		if (err) throw err;
		console.log(result);
		res.send('Stage table created');
	})
})

app.get('/setup/prizereceivedbyteam', (req, res) => {
	db.query(CreateQ.CREATE_PRIZERECEIVEDBYTEAM, (err, result) => {
		if (err) throw err;
		console.log(result);
		res.send('PrizeReceivedByTeam table created');
	})
})

app.get('/setup/seriesofmatchesplayedon', (req, res) => {
	db.query(CreateQ.CREATE_SERIESOFMATCHESPLAYEDON, (err, result) => {
		if (err) throw err;
		console.log(result);
		res.send('SeriesOfMatchesPlayedOn table created');
	})
})

app.get('/setup/consistsofmatch', (req, res) => {
	db.query(CreateQ.CREATE_CONSISTSOFMATCH, (err, result) => {
		if (err) throw err;
		console.log(result);
		res.send('ConsistsOfMatch table created');
	})
})

app.get('/setup/teammember', (req, res) => {
	db.query(CreateQ.CREATE_TEAMMEMBER, (err, result) => {
		if (err) throw err;
		console.log(result);
		res.send('TeamMember table created');
	})
})

/**
 * SPONSORS
 */

app.get('/sponsor', (req, res) => {
	db.query(GetQ.GET_SPONSORS, (err, result) => {
		if (err) throw err;
		return res.json({
			data: result
		})
	})
})

app.get('/sponsor/add', (req, res) => {
	const { name } = req.query;
	const INSERT_SPONSOR = `
		INSERT IGNORE INTO sponsor (companyName)
		VALUES ('${name}');
	`;
	db.query(INSERT_SPONSOR, (err, result) => {
		if (err) throw err;
		return res.send('Added new sponsor');
	})
})

app.get('/sponsor/delete', (req, res) => {
	const { key } = req.query;
	const DELETE_SPONSOR = `
		DELETE FROM sponsor
		WHERE companyName='${key}';
	`;
	db.query(DELETE_SPONSOR, (err, result) => {
		if (err) throw err;
		return res.send(`Deleted sponsor with companyName ${key}`);
	})
})

/**
 * PRIZE
 */

app.get('/prize', (req, res) => {
	db.query(GetQ.GET_PRIZES, (err, result) => {
		if (err) throw err;
		return res.json({
			data: result
		})
	})
})

app.get('/prizeandteams/deleteall', (req, res) => {
	const DELETE_PRIZES = `
		DELETE FROM prizereceivedbyteam
	`;
	db.query(DELETE_PRIZES, (err, result) => {
		if (err) throw err;
	})
})

app.get('/prize/updatelist', (req, res) => {
	const DELETE_PRIZES = `
		DELETE FROM prizereceivedbyteam
	`;
	const UPDATE_PRIZES = `
		INSERT IGNORE INTO prizereceivedbyteam
		SELECT p.prizeID, t.teamName
		FROM team t, prize p
		WHERE t.prizeID = p.prizeID
	`;
	db.query(DELETE_PRIZES, (err, result) => {
		if (err) throw err;
	})
	db.query(UPDATE_PRIZES, (err, result) => {
		if (err) throw err;
		return res.send('Added new sponsor');
	})
})

app.get('/prizeandteams', (req, res) => {
	db.query(GetQ.GET_PRIZERECEIVEDBYTEAM, (err, result) => {
		if (err) throw err;
		return res.json({
			data: result
		})
	})
})

app.get('/prize/add', (req, res) => {
	const { name, value } = req.query;
	const INSERT_PRIZE = `
		INSERT IGNORE INTO prize (name, prizeValueUSD)
		VALUES ('${name}', '${value}');
	`;
	db.query(INSERT_PRIZE, (err, result) => {
		if (err) throw err;
		return res.send('Added new sponsor');
	})
})

app.get('/prize/delete', (req, res) => {
	const { key } = req.query;
	const DELETE_PRIZE = `
		DELETE FROM prize
		WHERE prizeID='${key}';
	`;
	const RESET_INCREMENT = `
		ALTER TABLE prize AUTO_INCREMENT = ${key};
	`;
	db.query(DELETE_PRIZE, (err, result) => {
		if (err) throw err;
	})
	db.query(RESET_INCREMENT, (err, result) => {
		if (err) throw err;
	})
	return res.send(`Deleted prize with id: ${key}`);
})

app.get('/prize/getsum', (req, res) => {
	const GET_SUM_PRIZE = `
		SELECT SUM(prizeValueUSD)
			FROM prize
	`;
	db.query(GET_SUM_PRIZE, (err, result) => {
		if (err) throw err;
		return res.json({
			data: result
		});
	})
})

app.get('/prize/getmax', (req, res) => {
	const GET_MAX_PRIZE = `
		SELECT MAX(prizeValueUSD)
			FROM prize
			HAVING MIN(prizeID)
	`;
	db.query(GET_MAX_PRIZE, (err, result) => {
		if (err) throw err;
		return res.json({
			data: result
		});
	})
})

/**
 * TEAM
 */

app.get('/team', (req, res) => {
	db.query(GetQ.GET_TEAMS, (err, result) => {
		if (err) throw err;
		return res.json({
			data: result
		})
	})
})

app.get('/team/add', (req, res) => {
	const { name, country, prize } = req.query;
	const INSERT_TEAM = `
		INSERT IGNORE INTO team (teamName, countryOfOrigin ${prize ?`, prizeID`: ""})
		VALUES ('${name}', '${country}' ${prize ?`, '${prize}'`: ""});
	`;
	db.query(INSERT_TEAM, (err, result) => {
		if (err) throw err;
		return res.send(`Added new team: ${name} ${country} ${prize}`);
	})
})

app.get('/team/delete', (req, res) => {
	const { key } = req.query;
	const DELETE_TEAM = `
		DELETE FROM team
		WHERE teamName='${key}';
	`;
	db.query(DELETE_TEAM, (err, result) => {
		if (err) throw err;
		return res.send(`Deleted team with id: ${key}`);
	})
})

app.get('/team/filter', (req, res) => {
	const { key } = req.query;
	const FILTER_TEAM = `
		SELECT *
		FROM team
		WHERE countryOfOrigin='${key}'
	`;
	db.query(FILTER_TEAM, (err, result) => {
		if (err) throw err;
		return res.json({
				data: result
			})
	})
})

app.get('/team/update', (req, res) => {
	const { name, newPrizeID } = req.query;
	const UPDATE_TEAM = `
		UPDATE IGNORE team
		SET prizeID=${newPrizeID}
		WHERE teamName = '${name}';
	`;
	db.query(UPDATE_TEAM, (err, result) => {
		if (err) throw err;
		return res.send(`Updated ${name}'s prizeID to ${newPrizeID}`)
	})
})

app.get('/team/topcountries', (req, res) => {
	const TOP_WINNING_COUNTRIES = `
		SELECT t.countryOfOrigin, count(t.countryOfOrigin)
			FROM team t
			WHERE t.prizeID < 8
			GROUP BY t.countryOfOrigin
	`;
	db.query(TOP_WINNING_COUNTRIES, (err, result) => {
		if (err) throw err;
		return res.json({
			data: result
		})
	})
})

/**
 * TEAM MEMBER
 */

 app.get('/teammember', (req, res) => {
	db.query(GetQ.GET_TEAMMEMBERS, (err, result) => {
		if (err) throw err;
		return res.json({
			data: result
		})
	})
})

app.get('/teammember/add', (req, res) => {
	const { firstName, lastName, nationality, teamName } = req.query;
	const INSERT_TEAMMEMBER = `
		INSERT IGNORE INTO teammember (firstName, lastName, nationality, teamName)
		VALUES ('${firstName}', '${lastName}', '${nationality}', '${teamName}');
	`;
	db.query(INSERT_TEAMMEMBER, (err, result) => {
		if (err) throw err;
		return res.send(`Added new team member: ${firstName} ${lastName} ${nationality} ${teamName}`);
	})
})

app.get('/teammember/filter', (req, res) => {
	const { teamName } = req.query;
	const FILTER_TEAMMEMBER = `
		SELECT *
		FROM teammember
		WHERE teamName='${teamName}'
	`;
	db.query(FILTER_TEAMMEMBER, (err, result) => {
		if (err) throw err;
		return res.json({
				data: result
			})
	})
})

app.get('/teammember/samecountry', (req, res) => {
	const SAME_COUNTRY_DIVISION = `
		SELECT tm.firstName, tm.lastName, tm.nationality, tm.teamName
		FROM teammember tm
		WHERE EXISTS ( 
			SELECT t.countryofOrigin								
			FROM team t
			WHERE tm.nationality = t.countryOfOrigin
		)
	`;
	db.query(SAME_COUNTRY_DIVISION, (err, result) => {
		if (err) throw err;
		return res.json({
			data: result
		})
	})
})

app.get('/teammember/delete', (req, res) => {
	const { key } = req.query;
	const DELETE_TEAMMEMBER = `
		DELETE FROM teammember
		WHERE memberID='${key}';
	`;
	db.query(DELETE_TEAMMEMBER, (err, result) => {
		if (err) throw err;
		return res.send(`Deleted member with id: ${key}`);
	})
})

app.listen('3000', () => {
	console.log('Server started on port 3000');
});