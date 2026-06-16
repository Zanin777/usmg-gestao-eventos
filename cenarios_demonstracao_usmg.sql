
INSERT INTO Local VALUES (1, 101, 100, 'Bloco A');
INSERT INTO Local VALUES (2, 202, 50, 'Bloco B');

INSERT INTO Evento VALUES (1, '2025-06-15', '08:00:00', 200);


INSERT INTO Atividade VALUES (1, 'Palestra', '08:00:00', '10:00:00', 1, 1);
INSERT INTO Atividade VALUES (2, 'Workshop', '10:30:00', '12:00:00', 1, 2);



INSERT INTO Staff VALUES (1, 'Segurança', 'carlos@usmg.br', 'Carlos Silva', '31999990001');
INSERT INTO Staff VALUES (2, 'Palestrante', 'ana@usmg.br', 'Ana Souza', '31999990002');

INSERT INTO Atuacao_staff VALUES (1, 1); -- Carlos na Palestra
INSERT INTO Atuacao_staff VALUES (1, 2); -- Ana na Palestra
INSERT INTO Atuacao_staff VALUES (2, 1); -- Carlos no Workshop



INSERT INTO Participante VALUES ('12345678901', 'João Pedro', 'joao@email.com', '31988880001');
INSERT INTO Participante VALUES ('98765432100', 'Maria Lima', 'maria@email.com', '31988880002');


INSERT INTO Inscricao (id_inscricao, cpf_participante, id_atividade, status_presenca)
VALUES (1, '12345678901', 1, DEFAULT);

INSERT INTO Inscricao (id_inscricao, cpf_participante, id_atividade, status_presenca)
VALUES (2, '98765432100', 1, DEFAULT);


UPDATE Inscricao
SET status_presenca = 'confirmado',
    data_checkin = NOW()
WHERE id_inscricao = 1;


UPDATE Inscricao
SET status_presenca = 'ausente'
WHERE id_inscricao = 2;


INSERT INTO Certificado VALUES (1, '2025-06-15', 2, 1);



SELECT e.id_evento, e.e_data, e.e_horario,
       a.tipo, a.horario_inicio, a.horario_fim,
       l.nome_bloco, l.id_sala
FROM Evento e
JOIN Atividade a ON a.id_evento = e.id_evento
JOIN Local l ON l.id_local = a.id_local;


SELECT p.p_nome, i.status_presenca, i.data_checkin
FROM Inscricao i
JOIN Participante p ON p.cpf = i.cpf_participante
WHERE i.id_atividade = 1;


SELECT a.tipo, s.s_nome, s.s_funcao
FROM Atuacao_staff at
JOIN Atividade a ON a.id_atividade = at.id_atividade
JOIN Staff s ON s.id_staff = at.id_staff;

