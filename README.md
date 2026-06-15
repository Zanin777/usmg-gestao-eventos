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
