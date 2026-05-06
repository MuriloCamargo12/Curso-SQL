USE juncoes;

SELECT * FROM filme
WHERE NOT EXISTS (
    SELECT 1
    FROM pessoa
    WHERE filme.id = pessoa.filme_preferido
);


SELECT * FROM filme
WHERE EXISTS (
    SELECT 1
    FROM pessoa
    WHERE filme.id = pessoa.filme_preferido
);