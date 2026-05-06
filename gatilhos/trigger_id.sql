USE gatilhos;

CREATE TABLE IF NOT EXISTS pessoa(
    nome VARCHAR(50),
    id VARCHAR(255) PRIMARY KEY
);

-- definição trigger

DELIMITER $$ 
    CREATE TRIGGER tr_gerar_id
    BEFORE INSERT ON pessoa
    FOR each ROW
    set new.id = UUID();
$$

DELIMITER ;

INSERT INTO pessoa (nome)
VALUES ('João'), ('Maria'), ('Carmen');

SELECT * FROM pessoa