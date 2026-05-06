USE gatilhos;

CREATE TABLE IF NOT EXISTS produtos (
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(80),
    estoque INT DEFAULT 10
);

CREATE TABLE IF NOT EXISTS log_alteracao_estoque(
    id_log INT AUTO_INCREMENT PRIMARY KEY,
    id_produto INT,
    estoque_atual INT,
    estoque_anterior INT,
    Foreign Key (id_produto) REFERENCES produtos(id_produto)
);


DELIMITER $$

    CREATE TRIGGER tr_registrar_alteracao_estoque
    AFTER UPDATE ON produtos
    FOR EACH ROW 
    BEGIN
        DECLARE estoque_novo INT;
        SET estoque_novo = NEW.estoque;

        IF estoque_novo <>  old.estoque then

        INSERT INTO log_alteracao_estoque(id_produto, estoque_anterior, estoque_atual)
        VALUES (NEW.id_produto, OLD.estoque, estoque_novo);
        END IF;
    END $$

DELIMITER ;

USE gatilhos;

INSERT INTO produtos(nome) VALUES
('Produto A')

UPDATE produtos SET estoque = 20 WHERE id_produto = 1;

UPDATE produtos SET nome = 'Produto B' WHERE id_produto = 1;


SELECT * FROM produtos;
SELECT * FROM log_alteracao_estoque;