USE gatilhos;

CREATE TABLE IF NOT EXISTS avaliacoes (
    ind INT PRIMARY KEY AUTO_INCREMENT,
    nome_funcionario VARCHAR(60),
    aval_tecnico INT,
    aval_comportamental INT,
    desempenho DECIMAL(5, 2)
);

DELIMITER $$
    CREATE TRIGGER tr_calculo_desempenho
    BEFORE INSERT ON avaliacoes
    FOR EACH ROW
    BEGIN
        SET NEW.desempenho = (NEW.aval_tecnico + NEW.aval_comportamental) / 2;
    END $$
DELIMITER ;


INSERT INTO avaliacoes (nome_funcionario, aval_tecnico, aval_comportamental) VALUES
('João', 85, 88),
('Maria', 78, 58),
('Miranda', 90, 92);

SELECT * FROM avaliacoes;