use asvic;
db.ocorrencias.insertMany(
  [
    {
      "Protocolo" : 1001,
      "tipo_ocorrencia" : "Acidente leve",
      "data_ocorrencia" : "2024-01-10",
      "individuo_envolvido" : null,
      "endereco_atual" : "Rua A, 123",
      "data_status" : "2024-01-10",
      "status" : "aguardando",
      "motivo" : "Aguardando aprovação do cliente"
    },
    {
      "Protocolo" : 1006,
      "tipo_ocorrencia" : "Furto de peças",
      "data_ocorrencia" : "2024-02-05",
      "individuo_envolvido" : null,
      "endereco_atual" : "Avenida F, 303",
      "data_status" : "2024-02-05",
      "status" : "indisponivel",
      "motivo" : "Técnicos em treinamento"
    },
    {
      "Protocolo" : 1002,
      "tipo_ocorrencia" : "Colisão traseira",
      "data_ocorrencia" : "2024-01-15",
      "individuo_envolvido" : null,
      "endereco_atual" : "Avenida B, 456",
      "data_status" : "2024-01-15",
      "status" : "agendado",
      "motivo" : "Reparo programado para a próxima semana"
    },
    {
      "Protocolo" : 1007,
      "tipo_ocorrencia" : "Vandalismo",
      "data_ocorrencia" : "2024-02-10",
      "individuo_envolvido" : null,
      "endereco_atual" : "Rua G, 404",
      "data_status" : "2024-02-10",
      "status" : "agendado",
      "motivo" : "Inspeção inicial agendada"
    },
    {
      "Protocolo" : 1003,
      "tipo_ocorrencia" : "Roubo de veículo",
      "data_ocorrencia" : "2024-01-20",
      "individuo_envolvido" : null,
      "endereco_atual" : "Rua C, 789",
      "data_status" : "2024-01-20",
      "status" : "indisponivel",
      "motivo" : "Peças em falta no estoque"
    },
    {
      "Protocolo" : 1008,
      "tipo_ocorrencia" : "Pane elétrica",
      "data_ocorrencia" : "2024-02-15",
      "individuo_envolvido" : null,
      "endereco_atual" : "Avenida H, 505",
      "data_status" : "2024-02-15",
      "status" : "disponivel",
      "motivo" : "Preparado para começar os reparos"
    },
    {
      "Protocolo" : 1004,
      "tipo_ocorrencia" : "Batida em poste",
      "data_ocorrencia" : "2024-01-25",
      "individuo_envolvido" : null,
      "endereco_atual" : "Avenida D, 101",
      "data_status" : "2024-01-25",
      "status" : "disponivel",
      "motivo" : "Pronto para iniciar o serviço"
    },
    {
      "Protocolo" : 1009,
      "tipo_ocorrencia" : "Queda de árvore",
      "data_ocorrencia" : "2024-02-20",
      "individuo_envolvido" : null,
      "endereco_atual" : "Rua I, 606",
      "data_status" : "2024-02-20",
      "status" : "aguardando",
      "motivo" : "Aguardando envio de peças"
    },
    {
      "Protocolo" : 1005,
      "tipo_ocorrencia" : "Danos na lataria",
      "data_ocorrencia" : "2024-01-30",
      "individuo_envolvido" : null,
      "endereco_atual" : "Rua E, 202",
      "data_status" : "2024-01-30",
      "status" : "aguardando",
      "motivo" : "Aguardando confirmação do seguro"
    },
    {
      "Protocolo" : 1010,
      "tipo_ocorrencia" : "Alagamento",
      "data_ocorrencia" : "2024-02-25",
      "individuo_envolvido" : null,
      "endereco_atual" : "Avenida J, 707",
      "data_status" : "2024-02-25",
      "status" : "agendado",
      "motivo" : "Revisão completa programada"
    }
  ]  
);