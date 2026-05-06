--Criar uma tabela chamada planeta
--id int
--nome varchat(120)
--raio(8,2)
-- qtde_luas int
--habilitado boolean

USE starwars;

CREATE TABLE IF NOT EXISTS planeta (
    id INT,
    nome VARCHAR(120),
    raio DECIMAL(8,2),
    qtde_luas INT,
    habitado BOOLEAN
)

DROP TABLE IF EXISTS planeta