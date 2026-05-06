USE gatilhos;

CREATE TABLE IF NOT EXISTS funcionario(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS estatisticas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    total_funcionarios INT UNSIGNED
);


DELIMITER $$
    CREATE TRIGGER tr_atualizar_estatisticas
    AFTER INSERT ON funcionario
    FOR EACH ROW
    BEGIN
        DECLARE tf INT;
        SET tf = (select COUNT(*) FROM funcionario);
        UPDATE estatisticas
        SET total_funcionarios = tf 
        WHERE ID = 1;
    END $$
DELIMITER ;


INSERT INTO estatisticas (total_funcionarios) VALUES (0);

INSERT INTO funcionario (nome) VALUES ('João');

SELECT * FROM funcionario;
SELECT * FROM estatisticas;

