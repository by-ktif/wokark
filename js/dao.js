var mysql = require('mysql');

var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : ''
});

exports.addAirport = function(pCity, pCountry, pCode, pAlias) {
  connection.connect();

  connection.query('INSERT INTO wokark.w_airport SET ?', {city: pCity, country: pCountry, code: pCode, alias: pAlias}, function(err, result) {
    if (err) throw err;
  });

  connection.end();
};
