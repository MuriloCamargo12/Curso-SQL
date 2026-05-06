USE starwars;

SELECT * from personagem;
SELECT id, nome FROM personagem

--Para fazer update sem o wherem precisamos desativar o safe updates
SET SQL_SAFE_UPDATES = 0;
UPDATE personagem set nome = "Darth Vader"

--Atualizações com o where

UPDATE personagem set nome = "Luke Skywalker" WHERE id = 1;
UPDATE personagem set destaque = not destaque WHERE nome = "Chewbacca";
UPDATE personagem set destaque = not destaque WHERE nome = "Chewbacca";

UPDATE personagem set nome = "Leia Organa", altura = 1.6 WHERE id = 6;
