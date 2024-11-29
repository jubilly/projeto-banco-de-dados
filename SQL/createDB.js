import mysql from 'mysql';
import 'dotenv/config';

async function connect(){
  const connection = mysql.createConnection({
      host: process.env.DATABASE_HOST || 'DATABASE_HOST',
      user: process.env.DATABASE_USER || 'DATABASE_USER',
      password: process.env.DATABASE_PASSWORD || 'DATABASE_PASSWORD',
      database: process.env.DATABASE_NAME || 'DATABASE_NAME'
  });
  
  console.log("Conectou no MySQL!");
  return connection;
}

const database = await connect();

function createDataBase() {
    database.query(
        'CREATE DATABASE newasvic', (error, result) => {
            if (error) throw("Error:", error);
            console.log("Success:", result);
        }
    )
}

createDataBase();