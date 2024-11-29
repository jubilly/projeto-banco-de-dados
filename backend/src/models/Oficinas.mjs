import mongoose from "mongoose";

export const Oficina = mongoose.model(
  "Oficina",
  new mongoose.Schema({
    credencial: {
      type: String,
      required: true,
      unique: true,
    },
    peças: {
      type: [String],
      required: true,
    },
    quantidade_veiculos: {
      type: Number,
      required: true,
    },
  })
);
