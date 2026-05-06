-- Deixar os id na sequencia sem intervalo... 1, 2, 3, 4, 5...

USE starwars;
SELECT * FROM planeta;

UPDATE planeta set id = id / 100;

UPDATE planeta set id = 1 WHERE id = 6;