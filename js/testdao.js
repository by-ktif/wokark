var dao = require('./dao.js');
var arguments = process.argv.slice(2);

if(!arguments[0] || !arguments[1]) {
    console.log("Usage: node testdao.js <city> <country> [<code> [<alias>]]");
    process.exit(0);
}

dao.addAirport(arguments[0], arguments[1], arguments[2], arguments[3]);