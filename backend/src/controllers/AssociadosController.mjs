import { Associado } from "../models/Associado.mjs";

export class AssociadosController {
  async getAll(req, res) {
    const search = req.query.pesquisa;

    const searchFields = search ? ["nome", "cpf", "cnh", "email"] : [];

    const data = await Associado.find({
      $or: searchFields.map((field) => ({
        [field]: { $regex: search, $options: "i" },
      })),
    });

    res.send(data);
  }
}
