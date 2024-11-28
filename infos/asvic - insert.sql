-- Insert data into Marca
INSERT INTO Marca (codMarca, nomeMarca)
VALUES (1, 'Ford'),
       (2, 'Chevrolet'),
       (3, 'Toyota'),
       (4, 'Honda'),
       (5, 'Nissan'),
       (6, 'Volkswagen'),
       (7, 'Hyundai'),
       (8, 'Kia'),
       (9, 'BMW'),
       (10, 'Mercedes-Benz');

-- Insert data into Modelo
INSERT INTO Modelo (codModelo, nomeModelo, tipo, codMarca)
VALUES (1, 'Fiesta', 'CARRO', 1),
       (2, 'Cruze', 'CARRO', 2),
       (3, 'Camry', 'CARRO', 3),
       (4, 'Civic', 'CARRO', 4),
       (5, 'Altima', 'CARRO', 5),
       (6, 'Golf', 'CARRO', 6),
       (7, 'Elantra', 'CARRO', 7),
       (8, 'Sportage', 'CARRO', 8),
       (9, 'X5', 'CARRO', 9),
       (10, 'C-Class', 'CARRO', 10),
       (11, 'CB500F', 'MOTO', 4),
       (12, 'Ninja ZX-6R', 'MOTO', 5),
       (13, 'R1', 'MOTO', 9),
       (14, 'Monster', 'MOTO', 10),
       (15, 'Hayabusa', 'MOTO', 3);

-- Insert data into Associado
INSERT INTO Associado (matricula, nome, end_cep, end_logradouro, end_cidade, end_bairro, end_numero, end_complemento, cnh, tipo)
VALUES ('A00001', 'João Silva', '12345678', 'Rua A', 'Cidade A', 'Bairro A', '123', 'Apto 101', '12345678901', 'FISICA'),
       ('A00002', 'Maria Oliveira', '23456789', 'Avenida B', 'Cidade B', 'Bairro B', '456', 'Casa', '23456789012', 'FISICA'),
       ('A00003', 'Empresa X', '34567890', 'Rua C', 'Cidade C', 'Bairro C', '789', 'Sala 1', '34567890123', 'JURIDICA'),
       ('A00004', 'Carlos Souza', '45678901', 'Avenida D', 'Cidade D', 'Bairro D', '101', 'Cobertura', '45678901234', 'FISICA'),
       ('A00005', 'Luana Costa', '56789012', 'Rua E', 'Cidade E', 'Bairro E', '202', 'Apto 202', '56789012345', 'FISICA'),
       ('A00006', 'Empresa Y', '67890123', 'Avenida F', 'Cidade F', 'Bairro F', '303', 'Sala 2', '67890123456', 'JURIDICA'),
       ('A00007', 'Pedro Lima', '78901234', 'Rua G', 'Cidade G', 'Bairro G', '404', 'Casa', '78901234567', 'FISICA'),
       ('A00008', 'Ana Mendes', '89012345', 'Avenida H', 'Cidade H', 'Bairro H', '505', 'Apto 303', '89012345678', 'FISICA'),
       ('A00009', 'Empresa Z', '90123456', 'Rua I', 'Cidade I', 'Bairro I', '606', 'Sala 3', '90123456789', 'JURIDICA'),
       ('A00010', 'Rafael Santos', '01234567', 'Avenida J', 'Cidade J', 'Bairro J', '707', 'Casa', '01234567890', 'FISICA');

-- Insert data into Fisica
INSERT INTO Fisica (cpf, matricula)
VALUES ('12345678901', 'A00001'),
       ('23456789012', 'A00002'),
       ('45678901234', 'A00004'),
       ('56789012345', 'A00005'),
       ('78901234567', 'A00007'),
       ('89012345678', 'A00008'),
       ('01234567890', 'A00010');

-- Insert data into Juridica
INSERT INTO Juridica (cnpj, matricula)
VALUES ('12345678000101', 'A00003'),
       ('23456789000102', 'A00006'),
       ('34567890000103', 'A00009');

-- Insert data into Funcionario
INSERT INTO Funcionario (matriculaFuncionario, nome, tipo)
VALUES ('F00001', 'Roberto Martins', 'ATENDIMENTO'),
       ('F00002', 'Fernanda Lima', 'EVENTOS'),
       ('F00003', 'Lucas Pereira', 'ATENDIMENTO'),
       ('F00004', 'Juliana Alves', 'EVENTOS'),
       ('F00005', 'Thiago Souza', 'ATENDIMENTO'),
       ('F00006', 'Camila Ferreira', 'EVENTOS'),
       ('F00007', 'André Nunes', 'ATENDIMENTO'),
       ('F00008', 'Patricia Ramos', 'EVENTOS'),
       ('F00009', 'Ricardo Mendes', 'ATENDIMENTO'),
       ('F00010', 'Mariana Costa', 'EVENTOS');

-- Insert data into Funcionario_eventos
INSERT INTO Funcionario_eventos (matriculaFuncionario, cnh)
VALUES ('F00002', '98765432101'),
       ('F00004', '87654321012'),
       ('F00006', '76543210923'),
       ('F00008', '65432109834'),
       ('F00010', '54321098745');

-- Insert data into Funcionario_atendimento
INSERT INTO Funcionario_atendimento (matriculaFuncionario, rg)
VALUES ('F00001', 'MG1234567'),
       ('F00003', 'SP2345678'),
       ('F00005', 'RJ3456789'),
       ('F00007', 'PR4567890'),
       ('F00009', 'RS5678901');

-- Insert data into Oficina
INSERT INTO Oficina (pecas, oficina_credenciada, qtd_veiculos_atuais, matriculaFuncionario)
VALUES ('Peças X', 'Oficina A', 5, 'F00002'),
       ('Peças Y', 'Oficina B', 8, 'F00004'),
       ('Peças Z', 'Oficina C', 3, 'F00006'),
       ('Peças W', 'Oficina D', 7, 'F00008'),
       ('Peças V', 'Oficina E', 10, 'F00010');

-- Insert data into Veiculo
INSERT INTO Veiculo (chassi, placa, esp_renavam, esp_cor, esp_numero_motor, cod_fipe, codModelo, mensalidade)
VALUES ('1HGBH41JXMN109186', 'ABC1234', '12345678901', 'Preto', 'MOT123456', '1234567', 1, 500.00),
       ('2HGBH41JXMN109187', 'DEF5678', '23456789012', 'Branco', 'MOT234567', '2345678', 2, 600.00),
       ('3HGBH41JXMN109188', 'GHI9012', '34567890123', 'Prata', 'MOT345678', '3456789', 3, 700.00),
       ('4HGBH41JXMN109189', 'JKL3456', '45678901234', 'Azul', 'MOT456789', '4567890', 4, 550.00),
       ('5HGBH41JXMN109190', 'MNO7890', '56789012345', 'Vermelho', 'MOT567890', '5678901', 5, 620.00),
       ('6HGBH41JXMN109191', 'PQR2345', '67890123456', 'Verde', 'MOT678901', '6789012', 6, 750.00),
       ('7HGBH41JXMN109192', 'STU6789', '78901234567', 'Cinza', 'MOT789012', '7890123', 7, 580.00),
       ('8HGBH41JXMN109193', 'VWX1234', '89012345678', 'Amarelo', 'MOT890123', '8901234', 8, 630.00),
       ('9HGBH41JXMN109194', 'YZA5678', '90123456789', 'Azul', 'MOT901234', '9012345', 9, 720.00),
       ('0HGBH41JXMN109195', 'BCD9012', '01234567890', 'Branco', 'MOT012345', '0123456', 10, 670.00),
       ('1HGBH41JXMN109196', 'CDE3456', '02345678901', 'Preto', 'MOT345123', '1123456', 11, 450.00),
       ('2HGBH41JXMN109197', 'EFG4567', '03456789012', 'Azul', 'MOT456234', '1234567', 12, 700.00),
       ('3HGBH41JXMN109198', 'FGH5678', '04567890123', 'Verde', 'MOT567345', '1345678', 13, 720.00),
       ('4HGBH41JXMN109199', 'GHI6789', '05678901234', 'Vermelho', 'MOT678456', '1456789', 14, 770.00),
       ('5HGBH41JXMN109200', 'HIJ7890', '06789012345', 'Branco', 'MOT789567', '1567890', 15, 800.00);

-- Insert data into Ocorrencia
INSERT INTO Ocorrencia (tipo_ocorrencia, endereco_atual, protocolo, matriculaFuncionario, participacao)
VALUES ('Acidente leve', 'Rua A, 123', 1001, 'F00002', 75.50),
       ('Colisão traseira', 'Avenida B, 456', 1002, 'F00004', 65.00),
       ('Roubo de veículo', 'Rua C, 789', 1003, 'F00006', 80.75),
       ('Batida em poste', 'Avenida D, 101', 1004, 'F00008', 90.00),
       ('Danos na lataria', 'Rua E, 202', 1005, 'F00010', 50.25),
       ('Furto de peças', 'Avenida F, 303', 1006, 'F00002', 60.00),
       ('Vandalismo', 'Rua G, 404', 1007, 'F00004', 70.50),
       ('Pane elétrica', 'Avenida H, 505', 1008, 'F00006', 85.25),
       ('Queda de árvore', 'Rua I, 606', 1009, 'F00008', 55.00),
       ('Alagamento', 'Avenida J, 707', 1010, 'F00010', 95.50),
       ('Acidente grave', 'Rua K, 808', 1011, 'F00002', 120.00),
       ('Colisão frontal', 'Avenida L, 909', 1012, 'F00004', 110.75),
       ('Incêndio', 'Rua M, 1010', 1013, 'F00006', 130.50),
       ('Danos elétricos', 'Avenida N, 1111', 1014, 'F00004', 45.00);

-- Insert data into Individuo_envolvido
INSERT INTO Individuo_envolvido (individuos, individuo_envolvido, protocolo)
VALUES (1, 'Carlos Dias', 1001),
       (2, 'Renata Silva', 1002),
       (3, 'Marcelo Andrade', 1003),
       (4, 'Júlia Martins', 1004),
       (5, 'Fernando Costa', 1005),
       (6, 'Carla Nunes', 1006),
       (7, 'Paulo Lima', 1007),
       (8, 'Amanda Souza', 1008),
       (9, 'Rodrigo Ferreira', 1009),
       (10, 'Gabriela Alves', 1010),
       (11, 'Jorge Alves', 1011),
       (12, 'Silvia Cruz', 1012),
       (13, 'Henrique Dias', 1013),
       (14, 'Luciana Oliveira', 1014);

-- Insert data into AssociadoCadastro
INSERT INTO AssociadoCadastro (matricula, matriculaFuncionario, chassi, taxa_adesao)
VALUES ('A00001', 'F00001', '1HGBH41JXMN109186', 250.00),
       ('A00001', 'F00001', '1HGBH41JXMN109196', 150.00),
       ('A00002', 'F00003', '2HGBH41JXMN109187', 300.00),
       ('A00004', 'F00005', '3HGBH41JXMN109188', 350.00),
       ('A00005', 'F00007', '4HGBH41JXMN109189', 280.00),
       ('A00005', 'F00007', '5HGBH41JXMN109200', 180.00),
       ('A00007', 'F00009', '5HGBH41JXMN109190', 320.00),
       ('A00008', 'F00001', '6HGBH41JXMN109191', 400.00),
       ('A00010', 'F00003', '7HGBH41JXMN109192', 360.00),
       ('A00010', 'F00003', '9HGBH41JXMN109194', 410.00),
       ('A00003', 'F00005', '8HGBH41JXMN109193', 310.00),
       ('A00006', 'F00007', '9HGBH41JXMN109194', 290.00),
       ('A00009', 'F00009', '0HGBH41JXMN109195', 330.00);

-- Insert data into Sinistro
INSERT INTO Sinistro (chassi, protocolo, dia, mes, ano)
VALUES ('1HGBH41JXMN109186', 1001, 10, 1, 2023),
       ('1HGBH41JXMN109186', 1002, 15, 1, 2023),
       ('2HGBH41JXMN109187', 1003, 20, 2, 2023),
       ('3HGBH41JXMN109188', 1004, 25, 3, 2023),
       ('3HGBH41JXMN109188', 1005, 5, 4, 2023),
       ('4HGBH41JXMN109189', 1006, 10, 5, 2023),
       ('5HGBH41JXMN109190', 1007, 15, 6, 2023),
       ('5HGBH41JXMN109190', 1008, 20, 7, 2023),
       ('6HGBH41JXMN109191', 1009, 25, 8, 2023),
       ('7HGBH41JXMN109192', 1010, 30, 9, 2023),
       ('7HGBH41JXMN109192', 1011, 5, 10, 2023),
       ('8HGBH41JXMN109193', 1012, 10, 11, 2023),
       ('9HGBH41JXMN109194', 1013, 15, 12, 2023),
       ('9HGBH41JXMN109194', 1014, 20, 12, 2023);
      

