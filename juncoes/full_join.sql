 --MySQL não aceita

SELECT pessoa.id as id_pessoa, pessoa.nome, filme.id as id_filme, filme.titulo 
FROM pessoa 
FULL JOIN filme ON pessoa.filme_preferido = filme.id;


SELECT pessoa.id as id_pessoa, pessoa.nome, filme.id as id_filme, filme.titulo 
FROM pessoa 
FULL OUTER JOIN filme ON pessoa.filme_preferido = filme.id;