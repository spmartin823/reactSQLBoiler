const express = require('express');
const bodyParser = require('body-parser');
const db = require('../db');

const app = express();
const PORT = process.env.PORT || 3000;

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: true}));

app.use(express.static(__dirname + '/../react/dist'));

// sample route
app.post('/api/sample', (req, res) => {
  let table = req.body.table
	db.getAll(table, (error, results) => {
		if (error) throw error; 
		res.send(results)
	})
})

app.listen(PORT, () => {
  console.log(`listening on port ${PORT}`);
});
