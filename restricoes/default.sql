USE restricoes;

DROP TABLE IF EXISTS departamento;
DROP TABLE IF EXISTS empregado;

CREATE TABLE IF NOT EXISTS empregado (
    matricula CHAR(5) PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    salario DECIMAL(7, 2) DEFAULT 2500,
    estado_civil ENUM('Solteiro', 'Casado', 'Divorciado', 'Viúvo') DEFAULT 'Solteiro'
);

DESC empregado;

INSERT INTO empregado(matricula, nome) VALUES 
('12345', 'Ronald Borges');

SELECT * FROM empregado;