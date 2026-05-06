USE starwars;

desc personagem;

SELECT * FROM starwars.personagem;

ALTER TABLE personagem RENAME COLUMN destaque TO em_destaque;

ALTER TABLE personagem ADD genero VARCHAR(20)

ALTER TABLE personagem DROP COLUMN genero;

ALTER TABLE personagem MODIFY COLUMN nome VARCHAR(200)