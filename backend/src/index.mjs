import "./config/index.mjs";
import express from "express";
import { router } from "./routes.mjs";

const app = express();

app.use(express.json());

app.use(router);

const PORT = process.env.PORT;

app.listen(PORT, () => {
  console.log(`Server running at port ${PORT}`);
});
