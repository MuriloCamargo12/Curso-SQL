-- Selecionar nome e diametro dos planetas
-- Selecionar planetas com id par
-- Selecionar planetas com nome diferente de 'Tatooine'
-- Selecionar planeta não habitados
-- Selecionar planeta habitados

SELECT nome, raio * 2 as diametro from starwars.planeta

SELECT id, nome from starwars.planeta WHERE id % 2 = 0

SELECT id, nome from starwars.planeta WHERE nome <> 'Tatooine'

SELECT id, nome, habitado FROM starwars.planeta WHERE habitado = FALSE;
SELECT id, nome, habitado FROM starwars.planeta WHERE NOT habitado;

SELECT id, nome, habitado FROM starwars.planeta WHERE habitado = TRUE;
SELECT id, nome, habitado FROM starwars.planeta WHERE habitado;



