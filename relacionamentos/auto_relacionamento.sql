use relacionamentos;

CREATE TABLE IF NOT EXISTS empregado (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(50) NOT NULL,
    id_supervisor INT,
    Foreign Key (id_supervisor) REFERENCES empregado(id)
);

INSERT INTO empregado (nome, cargo, id_supervisor) VALUES
('Patrícia', 'Gerente de Projeto', null),
('Gisele', 'Desenvolvedora', 1),
('Mariana', 'Analista de Qualidade', 1);

SELECT * FROM empregado;

INSERT INTO empregado (nome, cargo, id_supervisor) VALUES
('Carlos', 'Engenheiro de software', NULL)