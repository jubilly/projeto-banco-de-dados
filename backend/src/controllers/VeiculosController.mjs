import { Veiculo } from "../models/Veiculo.mjs";

export class VeiculosController {
  async getAll(req, res) {
    const data = await Veiculo.find();
    
    res.send(data);
  }
}
