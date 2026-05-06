USE starwars;

SELECT * FROM starwars.personagem;

--Esse comando pode custar seu emprego
-- DELETE FROM personagem;

DELETE FROM personagem WHERE id = 5;

DELETE FROM personagem WHERE altura is NULL

DELETE FROM personagem WHERE nome = 'Darth Vader'