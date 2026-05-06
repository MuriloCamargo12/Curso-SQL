USE restricoes;

DROP TABLE IF EXISTS departamento;
DROP TABLE IF EXISTS empregado;

CREATE TABLE IF NOT EXISTS departamento(
    id int PRIMARY KEY AUTO_INCREMENT, -- chave primaria (primary key)
    nome VARCHAR(40) NOT NULL,
    localizado VARCHAR(80),
    qtde_min_funcionarios INT NOT NULL,
    qtde_max_funcionarios INT NOT NULL,
    CONSTRAINT qtde_funcionarios CHECK (qtde_min_funcionarios >= 3 AND qtde_max_funcionarios <= 10) 
);


INSERT INTO departamento (nome, localizado, qtde_min_funcionarios, qtde_max_funcionarios) VALUES 
('Recursos Humanos', 'Bloco A, Primeiro Andar', 5, 6);

SELECT * FROM departamento;