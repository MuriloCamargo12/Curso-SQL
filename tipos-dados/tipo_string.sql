USE tipos_dados;

CREATE TABLE aluno (
    matricula char(10), -- (0, 255)
    nome VARCHAR(80), -- (0, 65,535)
    -- recomendacao TINYTEXT (0, 255)
    recomendacao text -- (0, 65.535)
    -- recomendacao MEDIUMTEXT -- (0, 17 777 215)
    -- recomendacao LONGTEXT -- (0, 4 294 967 295)
)

INSERT INTO aluno VALUES ('123476172617', 'Carlos Pinheiro Borges', 'É um ótimo aluno, muito estudioso');

SELECT * FROM aluno;