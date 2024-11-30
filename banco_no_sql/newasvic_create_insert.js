const database = 'asvic';

// Create a new database.
use(database);

// Create a new collection.
// db.createCollection(collection);

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
      "Complemento": "Apto 101"
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
      "Complemento": "Casa"
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
      "Complemento": "Sala 1"
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
      "Complemento": "Cobertura"
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
      "Complemento": "Apto 202"
    }
  ]
);

db.oficinas.insertMany(
    [
      {
        "oficina_credenciada" : "Oficina A",
        "telefone_whatsapp" : "11987654321"
      },
      {
        "oficina_credenciada" : "Oficina B",
        "telefone_whatsapp" : "11976543210"
      },
      {
        "oficina_credenciada" : "Oficina C",
        "telefone_whatsapp" : "11965432109"
      },
      {
        "oficina_credenciada" : "Oficina D",
        "telefone_whatsapp" : "11954321098"
      },
      {
        "oficina_credenciada" : "Oficina E",
        "telefone_whatsapp" : "11943210987"
      }
    ]
    
  );

db.ocorrencias.insertMany(
[
    {
        "Protocolo": 1001,
        "tipo_ocorrencia": "Acidente leve",
        "data_ocorrencia": "2024-01-10",
        "individuo_envolvido": "Hannah Montana",
        "endereco_atual": "Rua A, 123",
        "data_status": "2024-01-10",
        "status": "aguardando",
        "motivo": "Aguardando aprovação do cliente"
    },
    {
        "Protocolo": 1006,
        "tipo_ocorrencia": "Furto de peças",
        "data_ocorrencia": "2024-02-05",
        "individuo_envolvido": "Justin Bieber",
        "endereco_atual": "Avenida F, 303",
        "data_status": "2024-02-05",
        "status": "indisponivel",
        "motivo": "Técnicos em treinamento"
    },
    {
        "Protocolo": 1002,
        "tipo_ocorrencia": "Colisão traseira",
        "data_ocorrencia": "2024-01-15",
        "individuo_envolvido": null,
        "endereco_atual": "Avenida B, 456",
        "data_status": "2024-01-15",
        "status": "agendado",
        "motivo": "Reparo programado para a próxima semana"
    },
    {
        "Protocolo": 1007,
        "tipo_ocorrencia": "Vandalismo",
        "data_ocorrencia": "2024-02-10",
        "individuo_envolvido": "Michael Jackson",
        "endereco_atual": "Rua G, 404",
        "data_status": "2024-02-10",
        "status": "agendado",
        "motivo": "Inspeção inicial agendada"
    },
    {
        "Protocolo": 1003,
        "tipo_ocorrencia": "Roubo de veículo",
        "data_ocorrencia": "2024-01-20",
        "individuo_envolvido": "Miley Cyrus",
        "endereco_atual": "Rua C, 789",
        "data_status": "2024-01-20",
        "status": "indisponivel",
        "motivo": "Peças em falta no estoque"
    },
    {
        "Protocolo": 1008,
        "tipo_ocorrencia": "Pane elétrica",
        "data_ocorrencia": "2024-02-15",
        "individuo_envolvido": "Humberto Gessinger",
        "endereco_atual": "Avenida H, 505",
        "data_status": "2024-02-15",
        "status": "disponivel",
        "motivo": "Preparado para começar os reparos"
    },
    {
        "Protocolo": 1004,
        "tipo_ocorrencia": "Batida em poste",
        "data_ocorrencia": "2024-01-25",
        "individuo_envolvido": null,
        "endereco_atual": "Avenida D, 101",
        "data_status": "2024-01-25",
        "status": "disponivel",
        "motivo": "Pronto para iniciar o serviço"
    },
    {
        "Protocolo": 1009,
        "tipo_ocorrencia": "Queda de árvore",
        "data_ocorrencia": "2024-02-20",
        "individuo_envolvido": "Beyonce",
        "endereco_atual": "Rua I, 606",
        "data_status": "2024-02-20",
        "status": "aguardando",
        "motivo": "Aguardando envio de peças"
    },
    {
        "Protocolo": 1005,
        "tipo_ocorrencia": "Danos na lataria",
        "data_ocorrencia": "2024-01-30",
        "individuo_envolvido": "Joao da Silva",
        "endereco_atual": "Rua E, 202",
        "data_status": "2024-01-30",
        "status": "aguardando",
        "motivo": "Aguardando confirmação do seguro"
    },
    {
        "Protocolo": 1010,
        "tipo_ocorrencia": "Alagamento",
        "data_ocorrencia": "2024-02-25",
        "individuo_envolvido": "Lucas Ruiz",
        "endereco_atual": "Avenida J, 707",
        "data_status": "2024-02-25",
        "status": "agendado",
        "motivo": "Revisão completa programada"
    }
]
);

db.funcionarios.insertMany([
      {
        "matriculaFuncionario" : "F00001",
        "nome" : "Roberto Martins",
        "cpf" : "12345678901"
      },
      {
        "matriculaFuncionario" : "F00002",
        "nome" : "Fernanda Lima",
        "cpf" : "23456789012"
      },
      {
        "matriculaFuncionario" : "F00003",
        "nome" : "Lucas Pereira",
        "cpf" : "34567890123"
      },
      {
        "matriculaFuncionario" : "F00004",
        "nome" : "Juliana Alves",
        "cpf" : "45678901234"
      },
      {
        "matriculaFuncionario" : "F00005",
        "nome" : "Thiago Souza",
        "cpf" : "56789012345"
      },
      {
        "matriculaFuncionario" : "F00006",
        "nome" : "Camila Ferreira",
        "cpf" : "67890123456"
      },
      {
        "matriculaFuncionario" : "F00007",
        "nome" : "André Nunes",
        "cpf" : "78901234567"
      },
      {
        "matriculaFuncionario" : "F00008",
        "nome" : "Patricia Ramos",
        "cpf" : "89012345678"
      },
      {
        "matriculaFuncionario" : "F00009",
        "nome" : "Ricardo Mendes",
        "cpf" : "90123456789"
      },
      {
        "matriculaFuncionario" : "F00010",
        "nome" : "Mariana Costa",
        "cpf" : "01234567890"
      }
]);