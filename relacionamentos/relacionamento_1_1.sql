USE relacionamentos;

CREATE TABLE IF NOT EXISTS departamento(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS gerente(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    id_departamento INT UNIQUE NOT NULL,
    Foreign Key (id_departamento) REFERENCES departamento(id)
);

INSERT INTO departamento (nome) VALUES
('Vendas'), ('TI');


INSERT INTO gerente (nome, id_departamento) VALUES
('Ana Silva', 1), ('Carlos', 2);


SELECT * FROM departamento;

SELECT * FROM gerente;


INSERT INTO gerente (nome, id_departamento) VALUES
('Roberto Souza', 1);