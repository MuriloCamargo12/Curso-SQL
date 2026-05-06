USE restricoes;

DROP TABLE IF EXISTS departamento;

CREATE TABLE IF NOT EXISTS departamento(
    id int NOT NULL UNIQUE,
    nome VARCHAR(40) NOT NULL,
    localizado VARCHAR(80)
);

DESC departamento;

INSERT INTO departamento VALUES (1, 'Gerência de TI', 'Bloco B terceiro andar')

SELECT * FROM departamento;