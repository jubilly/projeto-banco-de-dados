import mongoose from "mongoose";

export const Ocorrencia = mongoose.model(
  "Ocorrencia",
  new mongoose.Schema(
    {
      data: {
        type: Date,
        required: true,
      },
      tipo: {
        type: String,
        required: true,
      },
      envolvido: {
        type: mongoose.Schema.Types.ObjectId,
        ref: "Associado",
        required: true,
      },
      protocolo: {
        type: String,
        required: true,
        unique: true,
      },
    },
    "ocorrencia"
  )
);
