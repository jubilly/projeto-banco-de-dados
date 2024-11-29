import { Oficina } from "../models/Oficinas.mjs";

export class OficinasController{

  async getAll(req,res){

    const data = await Oficina.find()
    res.send(data)
  }
}