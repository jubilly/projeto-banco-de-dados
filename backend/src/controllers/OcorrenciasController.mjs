import { Ocorrencia } from "../models/Ocorrencia.mjs";

export class OcorrenciasController {
  async getAll(req, res) {
    const search = req.query.pesquisa;

    const searchFields = search ? ["tipo", "protocolo"] : [];

    const data = await Ocorrencia.find({
      $or: searchFields.map((field) => ({
        [field]: { $regex: search, $options: "i" },
      })),
    });

    res.send(data);
  }

  async deleteOne(req, res) {
    const id = req.params.id;

    const row = await Ocorrencia.deleteOne({ _id: id });

    res.status(200).send(row);
  }

  async createOne(req, res) {
    const newRow = {
      data: req.body.data,
      tipo: req.body.tipo,
      envolvido: req.body.envolvido,
      protocolo: req.body.protocolo,
    };

    const response = await Ocorrencia.insertMany(newRow);

    res.status(201).send(response);
  }

  async updateOne(req, res) {
    const rowId = req.params.id;

    const updateRow = req.body;

    const data = await Ocorrencia.updateOne({ _id: rowId }, updateRow);

    res.status(200).send(data);
  }
}
