import "./config/index.mjs";
import express from "express";
import cors from "cors";
import { router } from "./routes.mjs";

const app = express();

app.use(express.json());

app.use(cors());

app.use(router);

const PORT = process.env.PORT;

app.listen(PORT, () => {
  console.log(`Server running at port ${PORT}`);
});
