use juncoes;

SELECT * FROM pessoa
WHERE NOT EXISTS (
    SELECT 1
    FROM filme
    WHERE pessoa.filme_preferido = filme.id
)