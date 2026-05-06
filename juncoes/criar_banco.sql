CREATE DATABASE juncoes;

USE juncoes;


CREATE TABLE IF NOT EXISTS filme(
    id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(100) NOT NULL,
    ano_lancamento INT
);

CREATE TABLE IF NOT EXISTS pessoa(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(80) NOT NULL,
    idade INT NOT NULL,
    filme_preferido INT,
    Foreign Key (filme_preferido) REFERENCES filme(id)
);

INSERT INTO filme(titulo, ano_lancamento)
VALUES
('Filme A', 2010),
('Filme B', 2015),
('Filme C', 2012);

INSERT INTO pessoa(nome, idade, filme_preferido) VALUES
('João', 25, 1),
('Maria', 30, 1),
('Carlos', 25, NULL),
('Antônio', 35, 2);


SELECT * FROM pessoa;
SELECT * FROM filme;