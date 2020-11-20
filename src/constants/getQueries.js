exports.GET_SPONSORS = `
	SELECT *
	FROM sponsor
`;

exports.GET_PRIZES = `
	SELECT *
	FROM prize
`;

exports.GET_TEAMS = `
	SELECT *
	FROM team
`;

exports.GET_TEAMMEMBERS = `
	SELECT *
	FROM teammember
`;

exports.GET_TEAMMEMBERSPROJECTED = `
	SELECT firstName, lastName, nationality, teamName
	FROM teammember
`;

exports.GET_PRIZERECEIVEDBYTEAM = `
	SELECT *
	FROM prizereceivedbyteam
`;

