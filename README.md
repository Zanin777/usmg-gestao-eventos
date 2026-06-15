# 🎓 USMG — Sistema de Gestão de Eventos Acadêmicos

![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-025E8C?style=for-the-badge&logo=postgresql&logoColor=white)
![DBeaver](https://img.shields.io/badge/DBeaver-382923?style=for-the-badge&logo=dbeaver&logoColor=white)
![Status](https://img.shields.io/badge/status-concluído-success?style=for-the-badge)

> Banco de dados relacional para **gestão de eventos acadêmicos**: controle de inscrições, check-in de participantes, emissão de certificados, organização de staff e alocação de locais.

---

## 📖 Sobre o projeto

Projeto acadêmico desenvolvido na disciplina de Banco de Dados. O objetivo foi
modelar e implementar, do zero, um banco de dados capaz de gerenciar a realização
de eventos acadêmicos — desde o cadastro do evento e suas atividades até a
inscrição dos participantes, o controle de presença e a emissão de certificados.

O trabalho cobre o ciclo completo: **modelagem conceitual (DER)** → **modelo
lógico** → **implementação física em SQL** (criação de tabelas, chaves estrangeiras,
ordem de inserção e consultas).

## 🗂️ Modelagem (DER)

O modelo é composto por **6 entidades principais** e **1 entidade associativa**:

| Entidade        | Descrição                                              |
|-----------------|--------------------------------------------------------|
| **Evento**      | O evento acadêmico em si (nome, data, descrição)       |
| **Atividade**   | Palestras, workshops e demais atividades de um evento  |
| **Participante**| Pessoa inscrita no evento                              |
| **Staff**       | Equipe responsável pela organização e atuação          |
| **Local**       | Espaço físico onde ocorrem as atividades               |
| **Certificado** | Documento emitido ao participante                      |
| **Inscrição** ⭐ | Entidade associativa que liga Participante e Evento     |

A entidade **Inscrição** resolve o relacionamento N:N entre Participante e Evento,
permitindo que um participante se inscreva em vários eventos e que um evento
tenha vários participantes.

<!-- Salve a imagem do DER em /docs e descomente a linha abaixo -->
<!-- ![Diagrama Entidade-Relacionamento](docs/der.png) -->

## 🛠️ Tecnologias

- **MySQL** — sistema gerenciador de banco de dados
- **DBeaver** — ferramenta de modelagem e execução de queries
- **SQL** — DDL e DML (CREATE, INSERT, SELECT, constraints)

## 📁 Estrutura do repositório
usmg-gestao-eventos/

├── sql/

│   ├── 01_create_tables.sql    # Criação das tabelas e chaves estrangeiras

│   └── 02_inserts.sql          # Inserção dos dados (na ordem correta de FK)

├── docs/

│   └── der.png                 # Diagrama Entidade-Relacionamento

└── README.md

<!-- ajuste os nomes dos arquivos conforme o seu repo -->

## ▶️ Como executar

Pré-requisito: ter o **MySQL** instalado (ou usar o DBeaver conectado a um servidor MySQL).

```bash
# Clone o repositório
git clone https://github.com/Zanin777/usmg-gestao-eventos.git
cd usmg-gestao-eventos
```

Depois, execute os scripts **nesta ordem** (a ordem importa por causa das chaves estrangeiras):

1. `sql/01_create_tables.sql` — cria a estrutura
2. `sql/02_inserts.sql` — popula os dados

> 💡 As inserções seguem a ordem das dependências: primeiro as entidades
> independentes (Local, Evento), depois as que dependem delas, e por último a
> tabela associativa (Inscrição).


## 👤 Autor

[![GitHub](https://img.shields.io/badge/GitHub-Zanin777-181717?style=flat&logo=github)](https://github.com/Zanin777)
