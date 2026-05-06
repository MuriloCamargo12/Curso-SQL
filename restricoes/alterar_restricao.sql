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

--- Modifico um valor Default

ALTER TABLE empregado ALTER COLUMN estado_civil DROP DEFAULT;
ALTER TABLE empregado ALTER COLUMN estado_civil SET DEFAULT 'Viúvo';

ALTER TABLE empregado ALTER COLUMN salario SET DEFAULT 2600;

--- Modificar uma constraint associada na coluna
ALTER TABLE empregado MODIFY COLUMN nome VARCHAR(50);
ALTER TABLE empregado MODIFY COLUMN nome VARCHAR(50) NOT NULL;

--- Check
ALTER TABLE empregado ADD CONSTRAINT salario_minimo CHECK (salario >= 2600);
ALTER TABLE empregado DROP CONSTRAINT salario_minimo;

INSERT INTO empregado(matricula, nome, salario) VALUES 
('12345', 'Ronald Borges', 2500);

SELECT * FROM empregado;