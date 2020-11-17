var mysql = require('mysql');
var connection = mysql.createConnection({
    host     : 'localhost',
    port     : '3000',
    user     : 'urubu100',
    password : 'urubu100',
    database : 'maquinas'
});

connection.connect(function(err) {
    if (err) throw err;
    console.log('Conectado com sucesso!')
});



module.exports = connection;