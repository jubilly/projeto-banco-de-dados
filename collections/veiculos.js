use ('asvic');

db.veiculos.insertMany(
  [
    {
      "Chassi": "1HGBH41JXMN109186",
      "Cor": "Preto",
      "Cod_Fipe": "1234567",
      "Numero_motor": "MOT123456",
      "Renavam": "12345678901",
      "Placa": "ABC1234",
      "Modelo_tipo": "CARRO",
      "Modelo_nome": "Fiesta",
      "Marca": "Ford",
      "Matricula": "A0001",
      "Proprietario": "João Silva",
      "CNH": "123456789",
      "CEP": "12345678",
      "Cidade": "Cidade A",
      "Numero": 123,
      "Bairro": "Bairro A",
      "Logradouro": "Rua A",
      "Complemento": "Apto 101",
      "ocorrencias": [
        {
          "Protocolo": 1001,
          "fk_Veiculo_Chassi": "1HGBH41JXMN109186"
        }
      ]
    },
    {
      "Chassi": "2HGBH41JXMN109187",
      "Cor": "Branco",
      "Cod_Fipe": "2345678",
      "Numero_motor": "MOT234567",
      "Renavam": "23456789012",
      "Placa": "DEF5678",
      "Modelo_tipo": "CARRO",
      "Modelo_nome": "Cruze",
      "Marca": "Chevrolet",
      "Matricula": "A0002",
      "Proprietario": "Maria Oliveira",
      "CNH": "234567890",
      "CEP": "23456789",
      "Cidade": "Cidade B",
      "Numero": 456,
      "Bairro": "Bairro B",
      "Logradouro": "Avenida B",
      "Complemento": "Casa",
      "ocorrencias": [
        {
          "Protocolo": 1002,
          "fk_Veiculo_Chassi": "2HGBH41JXMN109187"
        }
      ]
    },
    {
      "Chassi": "3HGBH41JXMN109188",
      "Cor": "Prata",
      "Cod_Fipe": "3456789",
      "Numero_motor": "MOT345678",
      "Renavam": "34567890123",
      "Placa": "GHI9012",
      "Modelo_tipo": "CARRO",
      "Modelo_nome": "Camry",
      "Marca": "Toyota",
      "Matricula": "A0003",
      "Proprietario": "Empresa X",
      "CNH": "111111111",
      "CEP": "34567890",
      "Cidade": "Cidade C",
      "Numero": 789,
      "Bairro": "Bairro C",
      "Logradouro": "Rua C",
      "Complemento": "Sala 1",
      "ocorrencias": [
        {
          "Protocolo": 1003,
          "fk_Veiculo_Chassi": "3HGBH41JXMN109188"
        }
      ]
    },
    {
      "Chassi": "4HGBH41JXMN109189",
      "Cor": "Azul",
      "Cod_Fipe": "4567890",
      "Numero_motor": "MOT456789",
      "Renavam": "45678901234",
      "Placa": "JKL3456",
      "Modelo_tipo": "CARRO",
      "Modelo_nome": "Civic",
      "Marca": "Honda",
      "Matricula": "A0004",
      "Proprietario": "Carlos Souza",
      "CNH": "345678901",
      "CEP": "45678901",
      "Cidade": "Cidade D",
      "Numero": 101,
      "Bairro": "Bairro D",
      "Logradouro": "Avenida D",
      "Complemento": "Cobertura",
      "ocorrencias": [
        {
          "Protocolo": 1004,
          "fk_Veiculo_Chassi": "4HGBH41JXMN109189"
        }
      ]
    },
    {
      "Chassi": "5HGBH41JXMN109190",
      "Cor": "Vermelho",
      "Cod_Fipe": "5678901",
      "Numero_motor": "MOT567890",
      "Renavam": "56789012345",
      "Placa": "MNO7890",
      "Modelo_tipo": "CARRO",
      "Modelo_nome": "Altima",
      "Marca": "Nissan",
      "Matricula": "A0005",
      "Proprietario": "Luana Costa",
      "CNH": "456789012",
      "CEP": "56789012",
      "Cidade": "Cidade E",
      "Numero": 202,
      "Bairro": "Bairro E",
      "Logradouro": "Rua E",
      "Complemento": "Apto 202",
      "ocorrencias": [
        {
          "Protocolo": 1005,
          "fk_Veiculo_Chassi": "5HGBH41JXMN109190"
        }
      ]
    }
  ]
);
