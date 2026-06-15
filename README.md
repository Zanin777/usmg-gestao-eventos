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
inscrição dos participantes, o controle de presença (check-in) e a emissão de
certificados.

O trabalho cobre o ciclo completo: **modelagem conceitual (DER)** → **modelo
lógico** → **implementação física em SQL** (criação de tabelas, chaves
estrangeiras com regras de integridade referencial).

## 🗂️ Modelagem (DER)

O modelo é composto por **6 entidades principais** e **2 entidades associativas**:

| Entidade                        | Descrição                                                          |
|---------------------------------|--------------------------------------------------------------------|
| **Evento**                      | O evento acadêmico (data, horário e vagas totais)                  |
| **Atividade**                   | Palestras, workshops etc., vinculadas a um evento e a um local     |
| **Participante**                | Pessoa que se inscreve nas atividades (identificada pelo CPF)      |
| **Staff**                       | Equipe responsável pela organização e atuação                     |
| **Local**                       | Espaço físico (bloco, sala e capacidade máxima)                    |
| **Certificado**                 | Documento emitido a partir de uma inscrição                        |
| **Inscrição** ⭐ (associativa)   | Liga Participante e Atividade; registra check-in e status de presença |
| **Atuação do Staff** ⭐ (associativa) | Liga Staff e Atividade                                        |

**Relacionamentos principais:**

- Uma **Atividade** pertence a um **Evento** e ocorre em um **Local**.
- A **Inscrição** resolve o relacionamento N:N entre **Participante** e **Atividade**,
  guardando a data de check-in e o status de presença.
- O **Certificado** é gerado a partir de uma **Inscrição**.
- A **Atuação do Staff** resolve o relacionamento N:N entre **Staff** e **Atividade**.

<!-- Salve a imagem do DER em /docs e descomente a linha abaixo -->
<!-- ![Diagrama Entidade-Relacionamento](docs/der.png) -->

## 🛠️ Tecnologias

- **MySQL** — sistema gerenciador de banco de dados
- **DBeaver** — ferramenta de modelagem e execução de queries
- **SQL** — DDL (CREATE, ALTER, constraints) com regras de `ON DELETE` / `ON UPDATE`

## 📁 Estrutura do repositório

```
usmg-gestao-eventos/
├── estrutura_banco_usmg.sql   # Script completo: DROP + CREATE + chaves estrangeiras
└── README.md
```

## ▶️ Como executar

Pré-requisito: ter o **MySQL** instalado (ou usar o **DBeaver** conectado a um servidor MySQL).

```bash
# Clone o repositório
git clone https://github.com/Zanin777/usmg-gestao-eventos.git
cd usmg-gestao-eventos
```

Abra o arquivo `estrutura_banco_usmg.sql` no DBeaver e execute o script completo.

> 💡 O script começa removendo as tabelas (`DROP TABLE`) na ordem inversa das
> chaves estrangeiras, então pode ser reexecutado quantas vezes for preciso
> sem dar erro de FK. As chaves estrangeiras são criadas via `ALTER TABLE`
> após a criação das tabelas, com regras de integridade referencial definidas
> (`ON DELETE` / `ON UPDATE`).


## 👤 Autor

[![GitHub](https://img.shields.io/badge/GitHub-Zanin777-181717?style=flat&logo=github)](https://github.com/Zanin777)
