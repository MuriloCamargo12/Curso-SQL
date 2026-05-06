USE gatilhos;

CREATE TABLE IF NOT EXISTS produtos_2 (
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(80)
);

CREATE TABLE IF NOT EXISTS log_exclusao(
    id_log INT AUTO_INCREMENT PRIMARY KEY,
    id_produto INT,
    nome VARCHAR(80),
    data_exclusao DATE
);


DELIMITER $$

    CREATE TRIGGER tr_registrar_exclusao
    BEFORE DELETE ON produtos_2
    FOR EACH ROW 
    BEGIN
        INSERT INTO log_exclusao (id_produto, nome, data_exclusao)
        VALUES (old.id_produto, old.nome, DATE(now()));
    END $$

DELIMITER ;

USE gatilhos;

INSERT INTO produtos_2(nome) VALUES
('Produto B')

DELETE FROM produtos_2 WHERE id_produto = 1;


SELECT * FROM produtos_2;
SELECT * FROM log_exclusao;