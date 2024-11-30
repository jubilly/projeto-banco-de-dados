const database = 'asvic';

// Create a new database.
use(database);

// 1) Quais são as oficinas que mais estão sendo solicitadas para reparar veículos,
// levando em consideração os tipos de ocorrência mais comuns e a situação atual de cada protocolo?

db.ocorrencias.aggregate([
        {
        $match: {
            "data_ocorrencia": { $regex: "^2024" }
        }
    },
    {
        $project: {
            oficina_credenciada: "$oficinas.oficina_credenciada",
            tipo_ocorrencia: 1,
            status: 1,
            protocolo: 1
        }
    },
    {
        $group: {
            _id: "$oficina_credenciada",
            total_protocolos: { $sum: 1 },
            protocolos: { $push: "$protocolo" }
        }
    },
    {
        $sort: { total_protocolos: -1 }
    }
]);

/* 2) Qual mês de 2024 teve o maior número de sinistros registrados? */

db.ocorrencias.aggregate([
    {
      $project: {
        _id: 0,
        new_date: { 
          $dateFromString: {
            dateString: "$data_ocorrencia"
          } 
        }
      }
    },
    {
      $project: {
        new_year: {
          $year: "$new_date",
        },
        new_month: {
          $month: "$new_date"
        },
      }
    },
    {
      $match: {
        new_year: 2024
      }
    },
    {
      $group: {
        _id: "$new_month",
        total_sinistros: { $sum: 1 }
      }
    },
    {
      $project: {
        new_month: 1,
        total_sinistros: 1
      }
    }
]);


/*3) Qual número de ocorrências com status de agendado? */


db.ocorrencias.aggregate([
  {
    $match: {
      status: "agendado"
    }
  },
  {
    $group: {
      _id: "$status",
      total_status: { $sum: 1 }
    }
  },
  {
    $project: {
      total_status: 1
    }
  }
]);


/*4) Qual a marca de veículos que teve o maior número de sinistros em 2024? */

db.veiculos.aggregate([
    {
        $match: {
            "ocorrencias": { $exists: true }
        }
    },
    {
      $project:  {
        tamanho_ocorrencias: {
          $size: "$ocorrencias"
        },
      }
    },
    {
      $group: {
        _id: "$Marcas",
        media: { 
            $avg: "$tamanho_ocorrencias" 
        }
      }
    },
    {
      $project: {
        _id: 0,
        media: 1,
        Marca: 1
      }
    }
  
]);

/*5) Qual a média de sinistros por modelo de carro em 2024? */

db.veiculos.aggregate([
    {
        $match: {
            "ocorrencias": { $exists: true }
        }
    },
    {
      $project:  {
        tamanho_ocorrencias: {
          $size: "$ocorrencias"
        },
      }
    },
    {
      $group: {
        _id: "$Modelo_tipo",
        media: { 
            $avg: "$tamanho_ocorrencias" 
        }
      }
    },
    {
      $project: {
        _id: 0,
        media: 1,
        Marca: 1
      }
    }
  
]);


// Nova pergunta

// Quais são as oficinas que mais estão sendo solicitadas para reparar veículos, 
// levando em consideração os tipos de ocorrência mais comuns e a situação atual de cada protocolo?

//SQL

SELECT 
    o.oficina_credenciada, 
    COUNT(p.Protocolo) AS total_protocolos, 
    GROUP_CONCAT(p.Protocolo) AS protocolos
FROM 
    Protocolos p
JOIN 
    Oficinas o ON p.Protocolo = o.Protocolo
WHERE 
    YEAR(p.data_ocorrencia) = 2024
GROUP BY 
    o.oficina_credenciada
ORDER BY 
    total_protocolos DESC;
