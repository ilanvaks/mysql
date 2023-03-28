const mysql = require('mysql2');
const connection = require('./connection.js');

const db = mysql.createConnection(connection);

db.query("SELECT * FROM customers", (err, data) => {
  if(err) {
    console.log(err)
  }
  console.table(data)


});

db.end();