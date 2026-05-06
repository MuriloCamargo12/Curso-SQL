USE gatilhos;

CREATE TABLE IF NOT EXISTS clientes(
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    saldo DECIMAL(10, 2)
);

DELIMITER $$
    CREATE TRIGGER tr_verificar_saldo
    BEFORE DELETE ON clientes
    FOR EACH ROW
        BEGIN
            IF old.saldo > 10 THEN
                SIGNAL SQLSTATE '45000'
                SET message_text = 'O cliente possui saldo maior do que o permitido para exclusão';
            END IF;
        END $$
DELIMITER ;


USE gatilhos;
INSERT INTO clientes (saldo) VALUES (5);

SELECT * FROM clientes;

DELETE FROM clientes WHERE id_cliente = 1;