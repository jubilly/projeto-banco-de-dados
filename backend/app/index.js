import express, { response } from 'express';
import cors from 'cors';
import mysql from 'mysql';
import bodyParser from 'body-parser';
import 'dotenv/config';

const app = express();
const PORT = 5000;

app.use(cors());

app.use(express.json());
app.use(bodyParser.json());

async function connect(){
  const connection = await mysql.createConnection({
      host: process.env.DATABASE_HOST || 'DATABASE_HOST',
      user: process.env.DATABASE_USER || 'DATABASE_USER',
      password: process.env.DATABASE_PASSWORD || 'DATABASE_PASSWORD',
      database: process.env.DATABASE_NAME || 'DATABASE_NAME'
  });
  
  console.log("Conectou no MySQL!");
  return connection;
}

app.put('/addToCart', async (request, response) => {
  const { id, quantity, stock} = request.body;

  const conn = await connect();

  if (stock == 0) response.json({ status: 'product_out_of_stock', message: 'Produto fora de estoque' })
  
    const newStock = stock - quantity;

  const update = 'UPDATE Product SET stock = ? WHERE id = ?';

  conn.query(update, [newStock, id], (err, result) => {
    if (err) {
      return response.status(500).json({ message: 'Erro ao atualizar o produto' });
    }
    response.status(200).json({ status: 'product_added_to_cart', message: 'Produto atualizado com sucesso!' });
  });
  conn.end();
});

app.get('/products', async (request, response) => {
  const conn = await connect();
  const get = "Select * from Product";
  conn.query(get, function (err, result, fields) {
    if (err) throw err;
    response.json(result)
  });
  conn.end();
});

app.get('/health', async (request, response) => {
  response.json({
    success: true,
    message: 'Servidor saudável'
  })
});

// Inicie o servidor
app.listen(PORT, () => {
  console.log(`Servidor rodando no endereço http://localhost:${PORT}/health`);
});
