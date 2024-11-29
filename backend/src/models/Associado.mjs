import mongoose from "mongoose";

const enderecoSchema = new mongoose.Schema(
  {
    rua: {
      type: String,
      required: true,
    },
    numero: {
      type: Number,
      required: true,
    },
    bairro: {
      type: String,
      required: true,
    },
    cidade: {
      type: String,
      required: true,
    },
    estado: {
      type: String,
      required: true,
    },
    cep: {
      type: String,
      required: true,
    },
  },
  { _id: false }
);

export const Associado = mongoose.model(
  "Associado",
  new mongoose.Schema(
    {
      cpf: {
        type: String,
        required: true,
        unique: true,
      },
      cnh: {
        type: String,
        required: true,
        unique: true,
      },
      nome: {
        type: String,
        required: true,
      },
      endereco: {
        type: enderecoSchema,
        required: true,
      },
      telefone: {
        type: String,
        required: true,
      },
      email: {
        type: String,
        required: true,
        unique: true,
      },
      data_nascimento: {
        type: Date,
        required: true,
      },
    },
    { timestamps: true }
  ),
  "associados"
);
