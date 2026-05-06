USE restricoes;

DROP TABLE IF EXISTS departamento;

CREATE TABLE IF NOT EXISTS departamento(
    id int PRIMARY KEY AUTO_INCREMENT, -- chave primaria (primary key)
    nome VARCHAR(40) NOT NULL,
    localizado VARCHAR(80)
);


CREATE TABLE IF NOT EXISTS empregado (
    matricula int PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    id_departamento INT,
    Foreign Key (id_departamento) REFERENCES departamento(id)
);


INSERT INTO departamento (id, nome, localizado) VALUES ('Gerência de TI', 'Bloco B terceiro andar');

INSERT INTO empregado (nome, id_departamento) VALUES ('Ronald Borges', 3);

SELECT * FROM departamento;
SELECT * FROM empregado;
DESC empregado;

DELETE FROM departamento WHERE id = 8;