USE restricoes;

DROP TABLE IF EXISTS departamento;
DROP TABLE IF EXISTS empregado;

CREATE TABLE IF NOT EXISTS departamento(
    id int PRIMARY KEY AUTO_INCREMENT, -- chave primaria (primary key)
    nome VARCHAR(40) NOT NULL,
    localizado VARCHAR(80)
);


CREATE TABLE IF NOT EXISTS empregado (
    matricula int PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    id_departamento INT,
    Foreign Key (id_departamento) REFERENCES departamento(id) ON DELETE SET DEFAULT --on delete cascade / on delete set null / on delete set default  (ambos para delete ou update)
);


INSERT INTO departamento (nome, localizado) VALUES ('Gerência de TI', 'Bloco B terceiro andar'), ('Recursos Humanos', 'Bloco A, Primeiro Andar');

INSERT INTO empregado (nome, id_departamento) VALUES ('Ronald Borges', 1), ('Ana Almeida', 1);

SELECT * FROM departamento;
SELECT * FROM empregado;

USE restricoes;

-- UPDATE empregado set id_departamento = NULL;
DELETE from departamento WHERE id = 1;