USE gatilhos;

CREATE TABLE IF NOT EXISTS pedidos(
    id INT PRIMARY KEY AUTO_INCREMENT,
    item VARCHAR(50),
    quantidade INT,
    preco DECIMAL(10, 2),
    valor_total DECIMAL (10, 2)
);

DELIMITER $$
    CREATE TRIGGER tr_atualizar_valor_total
    BEFORE UPDATE ON pedidos
    FOR EACH ROW
    BEGIN
        SET NEW.valor_total = NEW.quantidade * NEW.preco;
    END $$

DELIMITER ;


INSERT INTO pedidos(item, quantidade, preco) VALUES
('Produto', 5, 20);


UPDATE pedidos SET quantidade = 50 WHERE id = 1;

UPDATE pedidos SET preco = 5 WHERE id = 1;


SELECT * FROM pedidos