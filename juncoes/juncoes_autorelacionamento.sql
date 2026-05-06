use juncoes;

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

INSERT INTO empregado (nome, cargo, id_supervisor) VALUES
('Carlos', 'Engenheiro de software', NULL)


SELECT t1.nome as nome, t1.cargo as cargo, t2.nome as supervisor FROM empregado as t1
LEFT JOIN empregado as t2
ON t1.id_supervisor = t2.id;