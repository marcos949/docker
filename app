const mysql = require('mysql2');

// Usamos variables de entorno para que sea flexible
const connection = mysql.createConnection({
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_NAME
});

connection.connect((err) => {
  if (err) {
    console.error('Error conectando a la DB: ' + err.stack);
    return;
  }
  console.log('¡Conectado a MySQL con éxito!');
});
