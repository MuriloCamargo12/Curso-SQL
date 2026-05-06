CREATE DATABASE selecoes;

use selecoes;

DROP TABLE IF EXISTS departamento;

CREATE TABLE IF NOT EXISTS departamento(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(40) NOT NULL,
    localizacao VARCHAR(80),
    qtde_min_empregados int,
    STATUS SET('Ativo', 'Inativo', 'Em Revisao') DEFAULT 'Ativo',
    check (qtde_min_empregados > 0)
)

INSERT INTO departamento (nome, localizacao, qtde_min_empregados) VALUES
('Financeiro', 'Bloco A, Primeiro Andar', 5),
('Marketing', 'Bloco B, Segundo Andar', 2);

INSERT INTO departamento (nome, localizacao, qtde_min_empregados, STATUS) VALUES
('Contabilidade', 'Bloco A, Primeiro Andar', 2, 'Inativo'),
('Controle de Qualidade', 'Bloco B, Segundo Andar', 7, 'Em Revisao');

SELECT * FROM departamento;