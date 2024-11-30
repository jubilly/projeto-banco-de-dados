use (asvic);
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
      "motivo": "Aguardando aprovação do cliente",
      "oficinas": [
        {
          "fk_Oficina_oficina_credenciada" : "Oficina A",
          "data" : "2024-01-10",
          "status" : "aguardando",
          "motivo" : "Aguardando aprovação do cliente",
          "oficina_credenciada" : "Oficina A",
          "nome" : "X",
          "telefone_whatsapp" : "11987654321",
          "protocolo" : 1001
        }
      ]
    },
    {
      "Protocolo": 1006,
      "tipo_ocorrencia": "Furto de peças",
      "data_ocorrencia": "2024-02-05",
      "individuo_envolvido": "Justin Bieber",
      "endereco_atual": "Avenida F, 303",
      "data_status": "2024-02-05",
      "status": "indisponivel",
      "motivo": "Técnicos em treinamento",
      "oficinas": [
        {
          "fk_Oficina_oficina_credenciada" : "Oficina A",
          "data" : "2024-02-05",
          "status" : "indisponivel",
          "motivo" : "Técnicos em treinamento",
          "oficina_credenciada" : "Oficina A",
          "nome" : "X",
          "telefone_whatsapp" : "11987654321",
          "protocolo" : 1006
        }
      ]
    },
    {
      "Protocolo": 1002,
      "tipo_ocorrencia": "Colisão traseira",
      "data_ocorrencia": "2024-01-15",
      "individuo_envolvido": null,
      "endereco_atual": "Avenida B, 456",
      "data_status": "2024-01-15",
      "status": "agendado",
      "motivo": "Reparo programado para a próxima semana",
      "oficinas": [
        {
          "fk_Oficina_oficina_credenciada" : "Oficina B",
          "data" : "2024-01-15",
          "status" : "agendado",
          "motivo" : "Reparo programado para a próxima semana",
          "oficina_credenciada" : "Oficina B",
          "nome" : "Y",
          "telefone_whatsapp" : "11976543210",
          "protocolo" : 1002
        }
      ]
    },
    {
      "Protocolo": 1007,
      "tipo_ocorrencia": "Vandalismo",
      "data_ocorrencia": "2024-02-10",
      "individuo_envolvido": "Michael Jackson",
      "endereco_atual": "Rua G, 404",
      "data_status": "2024-02-10",
      "status": "agendado",
      "motivo": "Inspeção inicial agendada",
      "oficinas": [
        {
          "fk_Oficina_oficina_credenciada" : "Oficina B",
          "data" : "2024-02-10",
          "status" : "agendado",
          "motivo" : "Inspeção inicial agendada",
          "oficina_credenciada" : "Oficina B",
          "nome" : "Y",
          "telefone_whatsapp" : "11976543210",
		      "protocolo" : 1007
        }
      ]
    },
    {
      "Protocolo": 1003,
      "tipo_ocorrencia": "Roubo de veículo",
      "data_ocorrencia": "2024-01-20",
      "individuo_envolvido": "Miley Cyrus",
      "endereco_atual": "Rua C, 789",
      "data_status": "2024-01-20",
      "status": "indisponivel",
      "motivo": "Peças em falta no estoque",
      "oficinas": [
        {
          "fk_Oficina_oficina_credenciada" : "Oficina C",
          "data" : "2024-01-20",
          "status" : "indisponivel",
          "motivo" : "em falta no estoque",
          "oficina_credenciada" : "Oficina C",
          "nome" : "Z",
          "telefone_whatsapp" : "11965432109",
          "protocolo" : 1003
        }
      ]
    },
    {
      "Protocolo": 1008,
      "tipo_ocorrencia": "Pane elétrica",
      "data_ocorrencia": "2024-02-15",
      "individuo_envolvido": "Humberto Gessinger",
      "endereco_atual": "Avenida H, 505",
      "data_status": "2024-02-15",
      "status": "disponivel",
      "motivo": "Preparado para começar os reparos",
      "oficinas": [
        {
          "fk_Oficina_oficina_credenciada" : "Oficina C",
          "data" : "2024-02-15",
          "status" : "disponivel",
          "motivo" : "Preparado para começar os reparos",
          "oficina_credenciada" : "Oficina C",
          "nome" : "Z",
          "telefone_whatsapp" : "11965432109",
          "protocolo" : 1008
        }
      ]
    },
    {
      "Protocolo": 1004,
      "tipo_ocorrencia": "Batida em poste",
      "data_ocorrencia": "2024-01-25",
      "individuo_envolvido": null,
      "endereco_atual": "Avenida D, 101",
      "data_status": "2024-01-25",
      "status": "disponivel",
      "motivo": "Pronto para iniciar o serviço",
      "oficinas": [
        {
          "fk_Oficina_oficina_credenciada" : "Oficina D",
          "data" : "2024-01-25",
          "status" : "disponivel",
          "motivo" : "Pronto para iniciar o serviço",
          "oficina_credenciada" : "Oficina D",
          "nome" : "W",
          "telefone_whatsapp" : "11954321098",
          "protocolo" : 1004
        }
      ]
    },
    {
      "Protocolo": 1009,
      "tipo_ocorrencia": "Queda de árvore",
      "data_ocorrencia": "2024-02-20",
      "individuo_envolvido": "Beyonce",
      "endereco_atual": "Rua I, 606",
      "data_status": "2024-02-20",
      "status": "aguardando",
      "motivo": "Aguardando envio de peças",
      "oficinas": [
        {
          "fk_Oficina_oficina_credenciada" : "Oficina D",
          "data" : "2024-02-20",
          "status" : "aguardando",
          "motivo" : "Aguardando envio de peças",
          "oficina_credenciada" : "Oficina D",
          "nome" : "W",
          "telefone_whatsapp" : "11954321098",
          "protocolo" : 1009
        }
      ]
    },
    {
      "Protocolo": 1005,
      "tipo_ocorrencia": "Danos na lataria",
      "data_ocorrencia": "2024-01-30",
      "individuo_envolvido": "Joao da Silva",
      "endereco_atual": "Rua E, 202",
      "data_status": "2024-01-30",
      "status": "aguardando",
      "motivo": "Aguardando confirmação do seguro",
      "oficinas": [
        {
          "fk_Oficina_oficina_credenciada" : "Oficina E",
          "data" : "2024-01-30",
          "status" : "aguardando",
          "motivo" : "Aguardando confirmação do seguro",
          "oficina_credenciada" : "Oficina E",
          "nome" : "V",
          "telefone_whatsapp" : "11943210987",
          "protocolo" : 1005
        }
      ]
    },
    {
      "Protocolo": 1010,
      "tipo_ocorrencia": "Alagamento",
      "data_ocorrencia": "2024-02-25",
      "individuo_envolvido": "Lucas Ruiz",
      "endereco_atual": "Avenida J, 707",
      "data_status": "2024-02-25",
      "status": "agendado",
      "motivo": "Revisão completa programada",
      "oficinas": [
        {
          "fk_Oficina_oficina_credenciada" : "Oficina E",
          "data" : "2024-02-25",
          "status" : "agendado",
          "motivo" : "Revisão completa programada",
          "oficina_credenciada" : "Oficina E",
          "nome" : "V",
          "telefone_whatsapp" : "11943210987",
          "protocolo" : 1010
        }
      ]
    }
  ]
);