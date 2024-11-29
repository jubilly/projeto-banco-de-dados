import mongoose from "mongoose";

export const Funcionario = mongoose.model(
  "Funcionario",
  new mongoose.Schema({
    nome: {
      type: String,
      required: true,
    },
    tipo: {
      type: String,
      required: true,
    },
    matricula: {
      type: String,
      required: true,
      unique: true,
    },
    data_admissao: {
      type: Date,
      required: true,
    },
  })
);
