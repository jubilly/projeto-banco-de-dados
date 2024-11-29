import mongoose from "mongoose";

export const Veiculo = mongoose.model(
  "Veiculo",
  new mongoose.Schema({
    chassi: {
      type: String,
      required: true,
      unique: true,
    },
    placa: {
      type: String,
      required: true,
      unique: true,
    },
    marca: {
      type: String,
      required: true,
    },
    modelo: {
      type: String,
      required: true,
    },
    ano: {
      type: Number,
      required: true,
    },
    cor: {
      type: String,
      required: true,
    },
    tipo: {
      type: String,
      required: true,
    },
    km: {
      type: Number,
      required: true,
    },
    combustivel: {
      type: String,
      required: true,
    },
  }),
  "veiculos"
);
