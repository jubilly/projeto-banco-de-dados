import mongoose from "mongoose";

await mongoose.connect(
  `mongodb://${process.env.DB_USER}:${process.env.DB_PASSWORD}@${process.env.DB_HOST}:${process.env.DB_PORT}`,
  { dbName: "DBEmpresa" }
);
