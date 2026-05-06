USE juncoes;

SELECT * FROM pessoa
WHERE EXISTS (
    SELECT 1
    FROM filme
    WHERE pessoa.filme_preferido = filme.id
);