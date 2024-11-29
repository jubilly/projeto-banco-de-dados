import express from "express";
import { VeiculosController } from "./controllers/VeiculosController.mjs";
import { AssociadosController } from "./controllers/AssociadosController.mjs";
import { OcorrenciasController } from "./controllers/OcorrenciasController.mjs";
import { OficinasController } from "./controllers/OficinasController.mjs";
import { FuncionariosController } from "./controllers/FuncionariosController.mjs";

export const router = express.Router();

const controlers = {
  veiculos: new VeiculosController(),
  associados: new AssociadosController(),
  ocorrencias: new OcorrenciasController(),
  oficinas: new OficinasController(),
  funcionarios: new FuncionariosController(),
};

router.get("/veiculos", controlers.veiculos.getAll);

router.get("/associados", controlers.associados.getAll);

router.get("/ocorrencias", controlers.ocorrencias.getAll);

router.get("/funcionarios", controlers.funcionarios.getAll);

router.get("/oficinas", controlers.oficinas.getAll);

router.delete("/ocorrencias/:id", controlers.ocorrencias.deleteOne);

router.post("/ocorrencias", controlers.ocorrencias.createOne);

router.put("/ocorrencias/:id", controlers.ocorrencias.updateOne);
