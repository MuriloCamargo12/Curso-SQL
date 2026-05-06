SELECT * FROM starwars.personagem

-- Seleções que limitam as colunas
SELECT id, nome FROM starwars.personagem

SELECT nome, id FROM starwars.personagem

SELECT id as identificador, nome as nomeCompleto from starwars.personagem;

-- Seleções que limitam as linhas
SELECT * from starwars.personagem where id = 1;

SELECT * from starwars.personagem WHERE id <> 1;

SELECT nome, id FROM starwars.personagem WHERE id <> 1;


SELECT altura FROM starwars.personagem
WHERE nome = "Leia";

SELECT altura * 3 as  triplo, nome from starwars.personagem where id <> 3;

SELECT nome, id FROM starwars.personagem  where id < 3;
SELECT nome, id FROM starwars.personagem  where id > 3;
SELECT nome, id FROM starwars.personagem  where id <= 3;
SELECT nome, id FROM starwars.personagem  where id >= 3;