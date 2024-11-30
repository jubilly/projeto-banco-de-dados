
-- Esse arquivo possui as queries usadas para gerar os arquivos JSON da pasta .banco_relacional_melhorado/sql/json

-- Dados gerados em JSON da relaçõa contato e oficna para a coleção Ocorrências Contato e Oficinas (arquivo dadoscontato.json)

SELECT * FROM contato
	INNER JOIN oficina ON contato.fk_Oficina_oficina_credenciada = oficina.oficina_credenciada;

-- Dados gerados em JSON do contato para a coleção Ocorrencia (arquivo dadosocorrenciacontato.json)

SELECT * FROM ocorrencia
	INNER JOIN contato.fk_Ocorrencia_Procolo ON ocorrencia.Protocolo;

-- Dados gerados em JSON para a coleção funcionário (arquivo dadosfuncionario.json)

SELECT * FROM funcionario;

-- Dados gerados em JSON para a coleção oficina (arquivo dadosoficina.json)

SELECT * FROM oficina;

-- Dados gerados em JSON do modelo e marca para a coleção veiculos  (arquivo dadosveiculos.json)

SELECT * FROM veiculo
	INNER JOIN modelo ON veiculo.fk_Modelo_codModelo = modelo.codModelo
    INNER JOIN marca ON modelo.fk_Marca_codMarca = marca.codMarca;

-- Dados gerados em JSON dos veiculos, associados para Ocorrencias (arquivo dadosveiculosocorrencias.json)

SELECT Veiculo.Chassi AS Chassi,
    Veiculo.Cor AS Cor,
    Veiculo.placa AS Placa,
    Veiculo.renavam AS Renavam,
    Veiculo.cod_fipe AS Cod_Fipe,
    Modelo.nomeModelo AS Modelo,
    Marca.nomeMarca AS Marca,
    Associado.Matricula AS Matricula,
    Associado.Nome AS Proprietario,
    Associado.CNH AS CNH,
    Associado.Logradouro AS Endereco,
    Associado.Cidade AS Cidade
FROM Veiculo
    INNER JOIN Modelo ON Veiculo.fk_Modelo_codModelo = Modelo.codModelo
    INNER JOIN Marca ON Modelo.fk_Marca_codMarca = Marca.codMarca
    INNER JOIN Associado ON Veiculo.fk_Associado_Matricula = Associado.Matricula;


-- Dados gerados em JSON para listar o numero do protoloco e chassi do veiculo para adicionar no array de ocorrencias na coleção de veiculos

SELECT Protocolo, fk_Veiculo_Chassi FROM Ocorrencia;