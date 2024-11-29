import { Funcionario } from "../models/Funcionario.mjs";

export class FuncionariosController {
  async getAll(req, res) {
    await Funcionario.insertMany([
      {
        nome: "Carlos Souza",
        tipo: "Marketing",
        matricula: "1002",
        data_admissao: new Date("2019-06-20"),
      },
      {
        nome: "Fernanda Lima",
        tipo: "Financeiro",
        matricula: "1003",
        data_admissao: new Date("2020-02-10"),
      },
      {
        nome: "Roberto Costa",
        tipo: "TI",
        matricula: "1004",
        data_admissao: new Date("2021-08-01"),
      },
      {
        nome: "Juliana Pereira",
        tipo: "Recursos Humanos",
        matricula: "1005",
        data_admissao: new Date("2017-12-05"),
      },
    ]);
    const data = await Funcionario.find();
    res.send(data);
  }
}
