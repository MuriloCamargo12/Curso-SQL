USE tipos_dados;

DROP TABLE IF EXISTS aluno

CREATE TABLE IF NOT EXISTS aluno (
    matricula char(10), -- (0, 255)
    nome VARCHAR(80), -- (0, 65,535)
    recomendacao text, -- (0, 65.535)
    semestre TINYINT UNSIGNED,
    creditos_cursados SMALLINT,
    media_geral FLOAT,
    data_ingresso DATE,
    data_conclusao DATE,
    horas_estudadas TIME,
    bolsista BOOLEAN,
    turno_estudo ENUM('Manhã', 'Tarde', 'Integral'),
    disciplinas SET('Biologia', 'Matemática', 'História', 'Geografia'),
    historico JSON
);


INSERT INTO aluno VALUES ('1234761726', 'Carlos Pinheiro Borges', 'É um ótimo aluno, muito estudioso', 1, 50, 8.0, '2010-02-17', '2014-05-12', '557:54:35', TRUE, 'tarde',
'Biologia,História,Geografia', '{"semestres": [
    { "disciplinas": ["Matemática", "Biologia"], "media_geral": 6.9},
    { "disciplinas": ["Inglês", "História"], "media_geral": 6.5},
    { "disciplinas": ["Matemática", "Biologia"], "media_geral": 8},
    { "disciplinas": ["Matemática", "Física"], "media_geral": 9.8}
],
"forma_ingresso": "recomendação"}');

SELECT * FROM aluno;