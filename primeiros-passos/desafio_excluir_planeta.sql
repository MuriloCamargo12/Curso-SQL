-- Excluir todos os planetas com id impar

USE starwars;

SELECT * FROM planeta;

DELETE FROM planeta WHERE id % 2 = 1;