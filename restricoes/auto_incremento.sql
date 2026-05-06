USE restricoes;

DROP TABLE IF EXISTS departamento;

CREATE TABLE IF NOT EXISTS departamento(
    id int PRIMARY KEY AUTO_INCREMENT, -- chave primaria (primary key)
    nome VARCHAR(40) NOT NULL,
    localizado VARCHAR(80)
);


DESC departamento;

INSERT INTO departamento (id, nome, localizado) VALUES (500, 'Gerência de TI', 'Bloco B terceiro andar');
INSERT INTO departamento ( nome, localizado) VALUES ('Gerência de TI', 'Bloco B terceiro andar')

SELECT * FROM departamento;

DELETE FROM departamento WHERE id = 8;