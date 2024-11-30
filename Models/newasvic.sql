create database newasvic;

USE newasvic;

CREATE TABLE Funcionario (
    matriculaFuncionario VARCHAR(6) PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(11) NOT NULL
);

CREATE TABLE Marca (
    codMarca INT PRIMARY KEY,
    nomeMarca VARCHAR(100) NOT NULL
);


CREATE TABLE Modelo (
    codModelo INT PRIMARY KEY,
    nomeModelo VARCHAR(100) NOT NULL,
    tipo VARCHAR(50),
    fk_Marca_codMarca INT NOT NULL,
    FOREIGN KEY (fk_Marca_codMarca) REFERENCES Marca(codMarca)
);

CREATE TABLE Associado (
    Matricula VARCHAR(6) PRIMARY KEY,
    Nome_completo VARCHAR(200) NOT NULL,
    CNH VARCHAR(11),
    Logradouro VARCHAR(150),
    Numero INT,
    Complemento VARCHAR(100),
    Bairro VARCHAR(100),
    Cidade VARCHAR(100),
    CEP VARCHAR(10),
    Associado_TIPO VARCHAR(50)
);

CREATE TABLE Veiculo (
    Chassi VARCHAR(50) PRIMARY KEY,
    Cor VARCHAR(30),
    numero_motor VARCHAR(50),
    placa VARCHAR(10),
    renavam VARCHAR(20),
    cod_fipe VARCHAR(20),
    fk_Modelo_codModelo INT NOT NULL,
    fk_Associado_Matricula VARCHAR(6) NOT NULL,
    FOREIGN KEY (fk_Modelo_codModelo) REFERENCES Modelo(codModelo),
    FOREIGN KEY (fk_Associado_Matricula) REFERENCES Associado(Matricula)
);

CREATE TABLE Ocorrencia (
    Protocolo INT PRIMARY KEY,
    tipo_ocorrencia VARCHAR(100),
    data_ocorrencia DATE,
    individuo_envolvido VARCHAR(100),
    endereco_atual VARCHAR(255),
    fk_Veiculo_Chassi VARCHAR(50) NOT NULL,
    fk_Funcionario_matricula VARCHAR(6) NOT NULL,
    FOREIGN KEY (fk_Veiculo_Chassi) REFERENCES Veiculo(Chassi),
    FOREIGN KEY (fk_Funcionario_matricula) REFERENCES Funcionario(matriculaFuncionario)
);

CREATE TABLE Oficina (
    oficina_credenciada VARCHAR(40) PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone_whatsapp VARCHAR(13)
);

CREATE TABLE Contato (
    fk_Oficina_oficina_credenciada VARCHAR(40) NOT NULL,
    fk_Ocorrencia_Protocolo INT NOT NULL,
    data DATE NOT NULL,
    status VARCHAR(50) NOT NULL,
    motivo VARCHAR(255),
    PRIMARY KEY (fk_Oficina_oficina_credenciada, fk_Ocorrencia_Protocolo),
    FOREIGN KEY (fk_Oficina_oficina_credenciada) REFERENCES Oficina(oficina_credenciada),
    FOREIGN KEY (fk_Ocorrencia_Protocolo) REFERENCES Ocorrencia(Protocolo)
);


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
INSERT INTO Modelo (codModelo, nomeModelo, tipo, fk_Marca_codMarca)
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
INSERT INTO Associado (Matricula, Nome_completo, CEP, Logradouro, Cidade, Bairro, Numero, Complemento, CNH, Associado_TIPO)
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


INSERT INTO Funcionario (matriculaFuncionario, nome, cpf)
VALUES ('F00001', 'Roberto Martins', '12312312301'),
       ('F00002', 'Fernanda Lima', '12312312302'),
       ('F00003', 'Lucas Pereira', '12312312303'),
       ('F00004', 'Juliana Alves', '12312312304'),
       ('F00005', 'Thiago Souza', '12312312305'),
       ('F00006', 'Camila Ferreira', '12312312306'),
       ('F00007', 'André Nunes', '12312312307'),
       ('F00008', 'Patricia Ramos', '12312312308'),
       ('F00009', 'Ricardo Mendes', '12312312309'),
       ('F00010', 'Mariana Costa', '12312312310');

-- Insert data into Oficina
INSERT INTO Oficina (oficina_credenciada, nome, telefone_whatsapp)
VALUES ('F00002', 'Oficina A', '77988888803'),
       ('F00004', 'Oficina B', '77988888804'),
       ('F00006', 'Oficina C', '77988888805'),
       ('F00008', 'Oficina D', '77988888806'),
       ('F00010', 'Oficina E', '77988888807');

-- Insert data into Veiculo
INSERT INTO Veiculo (Chassi, Cor, numero_motor, placa, renavam, cod_fipe, fk_Modelo_codModelo, fk_Associado_Matricula)
VALUES ('1HGBH41JXMN109186', 'Preto',    'MOT123456', 'ABC1234', '12345678901', '1234567', 1, 'A00001'),
       ('2HGBH41JXMN109187', 'Branco',   'MOT234567', 'DEF5678', '23456789012', '2345678', 2, 'A00002'),
       ('3HGBH41JXMN109188', 'Prata',    'MOT345678', 'GHI9012', '34567890123', '3456789', 3, 'A00003'),
       ('4HGBH41JXMN109189', 'Azul',     'MOT456789', 'JKL3456', '45678901234', '4567890', 4, 'A00004'),
       ('5HGBH41JXMN109190', 'Vermelho', 'MNO7890',   'PRH989E', '56789012345', '4567890', 5, 'A00005'),
       ('6HGBH41JXMN109191', 'Verde',    'MOT678901', 'PQR2345', '67890123456', '6789012', 6, 'A00006'),
       ('7HGBH41JXMN109192', 'Cinza',    'MOT789012', 'STU6789', '78901234567', '7890123', 7, 'A00007'),
       ('8HGBH41JXMN109193', 'Amarelo',  'MOT890123', 'VWX1234', '89012345678', '8901234', 8, 'A00008'),
       ('9HGBH41JXMN109194', 'Azul',     'MOT901234', 'YZA5678', '90123456789', '9012345', 9, 'A00009'),
       ('0HGBH41JXMN109195', 'Branco',   'MOT012345', 'BCD9012', '01234567890', '0123456', 10, 'A00010');

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

INSERT INTO Veiculo (Chassi, Cor, numero_motor, placa, renavam, cod_fipe, fk_Modelo_codModelo, fk_Associado_Matricula)
VALUES ('1HGBH41JXMN109186', 'Preto',    'MOT123456', 'ABC1234', '12345678901', '1234567', 1, 'A00001'),
       ('2HGBH41JXMN109187', 'Branco',   'MOT234567', 'DEF5678', '23456789012', '2345678', 2, 'A00002'),
       ('3HGBH41JXMN109188', 'Prata',    'MOT345678', 'GHI9012', '34567890123', '3456789', 3, 'A00003'),
       ('4HGBH41JXMN109189', 'Azul',     'MOT456789', 'JKL3456', '45678901234', '4567890', 4, 'A00004'),
       ('5HGBH41JXMN109190', 'Vermelho', 'MNO7890',   'PRH989E', '56789012345', '4567890', 5, 'A00005'),
       ('6HGBH41JXMN109191', 'Verde',    'MOT678901', 'PQR2345', '67890123456', '6789012', 6, 'A00006'),
       ('7HGBH41JXMN109192', 'Cinza',    'MOT789012', 'STU6789', '78901234567', '7890123', 7, 'A00007'),
       ('8HGBH41JXMN109193', 'Amarelo',  'MOT890123', 'VWX1234', '89012345678', '8901234', 8, 'A00008'),
       ('9HGBH41JXMN109194', 'Azul',     'MOT901234', 'YZA5678', '90123456789', '9012345', 9, 'A00009'),
       ('0HGBH41JXMN109195', 'Branco',   'MOT012345', 'BCD9012', '01234567890', '0123456', 10, 'A00010');


INSERT INTO Ocorrencia (Protocolo, tipo_ocorrencia, data_ocorrencia, individuo_envolvido, endereco_atual, fk_Veiculo_Chassi, fk_Funcionario_matricula)
VALUES 
    (1001, 'Acidente leve', '2024-11-01', 'João da Silva', 'Rua B, 123', '1HGBH41JXMN109186', 'A00001'),
    (1002, 'Colisão traseira', '2024-11-02', 'Maria Oliveira', 'Rua C, 123', '2HGBH41JXMN109187', 'A00002'),
    (1003, 'Roubo de veículo', '2024-11-03', 'Carlos Pereira', 'Rua A, 123', '3HGBH41JXMN109188', 'A00003'),
    (1004, 'Batida em poste', '2024-11-04', 'Ana Costa', 'Rua D, 123', '4HGBH41JXMN109189', 'A00004'),
    (1005, 'Danos na lataria', '2024-11-05', 'Paulo Santos', 'Rua F, 123', '5HGBH41JXMN109190', 'A00005'),
    (1006, 'Furto de peças', '2024-11-06', 'Mariana Souza', 'Rua G, 123', '6HGBH41JXMN109191', 'A00006'),
    (1007, 'Vandalismo', '2024-11-07', 'Ricardo Lima', 'Rua E, 123', '7HGBH41JXMN109192', 'A00007'),
    (1008, 'Pane elétrica', '2024-11-08', 'Fernanda Rocha', 'Rua W, 123', '8HGBH41JXMN109193', 'A00008'),
    (1009, 'Queda de árvore', '2024-11-09', 'Lucas Silva', 'Rua T, 123', '9HGBH41JXMN109194', 'A00009'),
    (1010, 'Alagamento', '2024-11-10', 'Juliana Almeida', 'Rua F, 123', '0HGBH41JXMN109195', 'A00010')

