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
    turno_estudo ENUM('Manhã', 'Tarde', 'Integral')

);


INSERT INTO aluno VALUES ('1234761726', 'Carlos Pinheiro Borges', 'É um ótimo aluno, muito estudioso', 1, 50, 8.0, '2010-02-17', '2014-05-12', '557:54:35', TRUE, 'tarde');

SELECT * FROM aluno;