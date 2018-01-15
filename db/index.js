const mysql = require('mysql');
const config = require('./config.js');
const c = mysql.createConnection(config);

const getAll = function(table, cb) {
	// syntax for this is (SQL, response)
  c.query(`SELECT * FROM ${table}`, cb)
};

module.exports = {
  getAll : getAll
  // add more (comma delimited) exports here
};

