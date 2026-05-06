CREATE TABLE personagem (
    id INT,
    nome VARCHAR(120),
    altura DECIMAL(4,2),
    destaque BOOLEAN,
    nascimento DATE
)

SHOW TABLES;

DROP TABLE personagem;

-- DROP TABLE starwars.personagem;

DROP TABLE IF EXISTS personagem;

CREATE TABLE IF NOT EXISTS personagem (
    id INT,
    nome VARCHAR(120),
    altura DECIMAL(4,2),
    destaque BOOLEAN,
    nascimento DATE
);