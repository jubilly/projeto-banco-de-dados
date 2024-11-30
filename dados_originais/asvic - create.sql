CREATE DATABASE asvic;
USE asvic;
CREATE TABLE Associado (
    matricula VARCHAR(6) PRIMARY KEY,
    nome VARCHAR(80),
    end_cep VARCHAR(8),
    end_logradouro VARCHAR(100),
    end_cidade VARCHAR(50),
    end_bairro VARCHAR(50),
    end_numero VARCHAR(6),
    end_complemento VARCHAR(60),
    cnh VARCHAR(11),
    tipo ENUM('FISICA', 'JURIDICA')
);
CREATE TABLE Oficina (
    pecas VARCHAR(80),
    oficina_credenciada VARCHAR(40) PRIMARY KEY,
    qtd_veiculos_atuais TINYINT UNSIGNED,
    matriculaFuncionario VARCHAR(6)
);
CREATE TABLE Veiculo (
    chassi VARCHAR(17) PRIMARY KEY,
    placa VARCHAR(7),
    esp_renavam VARCHAR(11),
    esp_cor VARCHAR(10),
    esp_numero_motor VARCHAR(15),
    cod_fipe VARCHAR(7),
    codModelo INT,
    mensalidade DECIMAL(5,2)
);
CREATE TABLE Funcionario (
    matriculaFuncionario VARCHAR(6) PRIMARY KEY,
    nome VARCHAR(60),
    tipo ENUM('EVENTOS', 'ATENDIMENTO')
);
CREATE TABLE Fisica (
    cpf VARCHAR(11),
    matricula VARCHAR(6) PRIMARY KEY
);

CREATE TABLE Juridica (
    cnpj VARCHAR(14),
    matricula VARCHAR(6) PRIMARY KEY
);
CREATE TABLE Ocorrencia (
    tipo_ocorrencia VARCHAR(30),
    endereco_atual VARCHAR(60),
    protocolo INT PRIMARY KEY,
    matriculaFuncionario VARCHAR(6),
    participacao DECIMAL(6,2)
);
CREATE TABLE Funcionario_eventos (
    matriculaFuncionario VARCHAR(6) PRIMARY KEY,
    cnh VARCHAR(11)
);
CREATE TABLE Funcionario_atendimento (
    matriculaFuncionario VARCHAR(6) PRIMARY KEY,
    rg VARCHAR(10)
);
CREATE TABLE Modelo (
    codModelo INT PRIMARY KEY,
    nomeModelo VARCHAR(50),
    tipo ENUM('CARRO', 'MOTO', 'CAMINHAO'),
    codMarca INT
);
CREATE TABLE Marca (
    codMarca INT PRIMARY KEY,
    nomeMarca VARCHAR(15)
);
CREATE TABLE Individuo_envolvido (
    individuos TINYINT UNSIGNED PRIMARY KEY,
    individuo_envolvido VARCHAR(60),
    protocolo INT
);
CREATE TABLE AssociadoCadastro (
    matricula VARCHAR(6),
    matriculaFuncionario VARCHAR(6),
    chassi VARCHAR(17),
    taxa_adesao DECIMAL(5,2),
    PRIMARY KEY (matricula, matriculaFuncionario, chassi)
);
CREATE TABLE Sinistro (
    chassi VARCHAR(17),
    protocolo INT,
    dia TINYINT UNSIGNED,
    mes TINYINT UNSIGNED,
    ano SMALLINT UNSIGNED,
    PRIMARY KEY (chassi, protocolo)
);

ALTER TABLE Oficina ADD CONSTRAINT FK_Oficina_2
    FOREIGN KEY (matriculaFuncionario)
    REFERENCES Funcionario_eventos (matriculaFuncionario)
    ON DELETE CASCADE;

ALTER TABLE Veiculo ADD CONSTRAINT FK_Veiculo_2
    FOREIGN KEY (codModelo)
    REFERENCES Modelo (codModelo)
    ON DELETE RESTRICT;

ALTER TABLE Fisica ADD CONSTRAINT FK_Fisica_2
    FOREIGN KEY (matricula)
    REFERENCES Associado (matricula)
    ON DELETE CASCADE;

ALTER TABLE Juridica ADD CONSTRAINT FK_Juridica_2
    FOREIGN KEY (matricula)
    REFERENCES Associado (matricula)
    ON DELETE CASCADE;

ALTER TABLE Ocorrencia ADD CONSTRAINT FK_ocorrencia_3
    FOREIGN KEY (matriculaFuncionario)
    REFERENCES Funcionario_eventos (matriculaFuncionario)
    ON DELETE CASCADE;

ALTER TABLE Funcionario_eventos ADD CONSTRAINT FK_Funcionario_eventos_2
    FOREIGN KEY (matriculaFuncionario)
    REFERENCES Funcionario (matriculaFuncionario)
    ON DELETE CASCADE;

ALTER TABLE Funcionario_atendimento ADD CONSTRAINT FK_Funcionario_atendimento_2
    FOREIGN KEY (matriculaFuncionario)
    REFERENCES Funcionario (matriculaFuncionario)
    ON DELETE CASCADE;

ALTER TABLE Modelo ADD CONSTRAINT FK_Modelo_2
    FOREIGN KEY (codMarca)
    REFERENCES Marca (codMarca)
    ON DELETE RESTRICT;

ALTER TABLE Individuo_envolvido ADD CONSTRAINT FK_individuo_envolvido_2
    FOREIGN KEY (protocolo)
    REFERENCES Ocorrencia (protocolo);

ALTER TABLE AssociadoCadastro ADD CONSTRAINT FK_AssociadoCadastro_1
    FOREIGN KEY (matricula)
    REFERENCES Associado (matricula)
    ON DELETE NO ACTION;

ALTER TABLE AssociadoCadastro ADD CONSTRAINT FK_AssociadoCadastro_2
    FOREIGN KEY (matriculaFuncionario)
    REFERENCES Funcionario_atendimento (matriculaFuncionario)
    ON DELETE NO ACTION;

ALTER TABLE AssociadoCadastro ADD CONSTRAINT FK_AssociadoCadastro_3
    FOREIGN KEY (chassi)
    REFERENCES Veiculo (chassi)
    ON DELETE NO ACTION;

ALTER TABLE Sinistro ADD CONSTRAINT FK_sinistro_1
    FOREIGN KEY (chassi)
    REFERENCES Veiculo (chassi)
    ON DELETE RESTRICT;

ALTER TABLE Sinistro ADD CONSTRAINT FK_sinistro_2
    FOREIGN KEY (protocolo)
    REFERENCES Ocorrencia (protocolo)
    ON DELETE RESTRICT;

