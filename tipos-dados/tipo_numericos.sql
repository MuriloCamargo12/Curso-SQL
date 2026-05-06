USE tipos_dados;

DROP TABLE IF EXISTS aluno

CREATE TABLE IF NOT EXISTS aluno (
    matricula char(10), -- (0, 255)
    nome VARCHAR(80), -- (0, 65,535)
    recomendacao text, -- (0, 65.535)
    semestre TINYINT UNSIGNED,
    creditos_cursados SMALLINT,
    media_geral FLOAT

)

INSERT INTO aluno VALUES ('1234761726', 'Carlos Pinheiro Borges', 'É um ótimo aluno, muito estudioso', 1, 50, 8.0);

SELECT * FROM aluno;