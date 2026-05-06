USE starwars;

INSERT INTO personagem (id, nome, altura, destaque, nascimento) VALUES (1, 'Luke Skywalker', 1.75, TRUE, '3091-10-25');

SELECT * FROM personagem;

INSERT INTO personagem(id, nome, destaque) VALUES (2, 'Chewbacca', TRUE);

INSERT INTO personagem(nome, altura, nascimento, id, destaque) VALUES ('Darth Vader', 2.02, '3092-02-08', 3, TRUE);

INSERT INTO personagem VALUES (4, "Jabba the Hutt", 1.75, false, '3076-06-12');

INSERT INTO personagem VALUES
(5, 'Snoke', 2.13, false, '2097-04-28'),
(6, 'Leia', 1.5, true, '3093-08-11');
