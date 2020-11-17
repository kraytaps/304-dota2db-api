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
		res.send('CreateSeriesOfMatchesPlayedOn table created');
	})
})

app.get('/setup/consistsofmatch', (req, res) => {
	db.query(CreateQ.CREATE_CONSISTSOFMATCH, (err, result) => {
		if (err) throw err;
		console.log(result);
		res.send('CreateConsistsOfMatch table created');
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
		INSERT INTO sponsor (companyName)
		VALUES ('${name}');
	`;
	db.query(INSERT_SPONSOR, (err, results) => {
		if (err) throw err;
		return res.send('Added new sponsor');
	})
})



app.listen('3000', () => {
	console.log('Server started on port 3000');
});