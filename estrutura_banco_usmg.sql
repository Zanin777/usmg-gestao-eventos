-- Removendo as tabelas na ordem inversa das FKs para evitar conflitos ao reexecutar
DROP TABLE IF EXISTS Certificado;
DROP TABLE IF EXISTS Inscricao;
DROP TABLE IF EXISTS Participante;
DROP TABLE IF EXISTS Atuacao_staff;
DROP TABLE IF EXISTS Staff;
DROP TABLE IF EXISTS Atividade;
DROP TABLE IF EXISTS Evento;
DROP TABLE IF EXISTS Local;

CREATE TABLE Participante (
    cpf VARCHAR(11) PRIMARY key not NULL,
    p_nome VARCHAR(50) not null,
    p_email VARCHAR(50) not null,
    p_telefone VARCHAR(50)
);

CREATE TABLE Staff (
    id_staff INTEGER PRIMARY key not null,
    s_funcao VARCHAR(30) not null,
    s_email VARCHAR(50) not null,
    s_nome VARCHAR(50) not null,
    s_telefone VARCHAR(50)
);

CREATE TABLE Evento (
    id_evento INTEGER PRIMARY key not null,
    e_data DATE not null,
    e_horario TIME not null,
    vagas_totais INTEGER not null
);

CREATE TABLE Local (
    id_local INTEGER PRIMARY key not null,
    id_sala INTEGER not null,
    capacidade_max INTEGER not null,
    nome_bloco VARCHAR(30) not null
);

CREATE TABLE Atividade (
    id_atividade INTEGER PRIMARY key not null,
    tipo VARCHAR(30) not null,
    horario_inicio TIME not null,
    horario_fim TIME not null,
    id_evento INTEGER not null,
    id_local INTEGER not null
);

CREATE TABLE Atuacao_staff (
    id_atividade INTEGER not null,
    id_staff INTEGER not null
);

CREATE TABLE Inscricao (
    id_inscricao INTEGER PRIMARY key not null,
    data_checkin DATETIME,
    status_presenca VARCHAR(30) not null default 'pendente',
    cpf_participante VARCHAR(11),
    id_atividade INTEGER not null
);

CREATE TABLE Certificado (
    id_certificado INTEGER PRIMARY key not null,
    data_emissao DATE not null,
    carga_horaria INTEGER not null,
    id_inscricao INTEGER not null
);
 
ALTER TABLE Atividade
    ADD CONSTRAINT FK_Atividade_Evento
        FOREIGN KEY (id_evento)
        REFERENCES Evento (id_evento)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;
 
ALTER TABLE Atividade
    ADD CONSTRAINT FK_Atividade_Local
        FOREIGN KEY (id_local)
        REFERENCES Local (id_local)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;
 
ALTER TABLE Atuacao_staff
    ADD CONSTRAINT FK_Atuacao_Atividade
        FOREIGN KEY (id_atividade)
        REFERENCES Atividade (id_atividade)
        ON DELETE CASCADE
        ON UPDATE CASCADE;
 
ALTER TABLE Atuacao_staff
    ADD CONSTRAINT FK_Atuacao_Staff
        FOREIGN KEY (id_staff)
        REFERENCES Staff (id_staff)
        ON DELETE CASCADE
        ON UPDATE CASCADE;
 
ALTER TABLE Inscricao
    ADD CONSTRAINT FK_Inscricao_Participante
        FOREIGN KEY (cpf_participante)
        REFERENCES Participante (CPF)
        ON DELETE SET NULL
        ON UPDATE CASCADE;
 
ALTER TABLE Inscricao
    ADD CONSTRAINT FK_Inscricao_Atividade
        FOREIGN KEY (id_atividade)
        REFERENCES Atividade (id_atividade)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;
 
ALTER TABLE Certificado
    ADD CONSTRAINT FK_Certificado_Inscricao
        FOREIGN KEY (id_inscricao)
        REFERENCES Inscricao (id_inscricao)
        ON DELETE CASCADE
        ON UPDATE CASCADE;
