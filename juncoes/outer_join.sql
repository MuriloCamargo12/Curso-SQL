USE juncoes;

SELECT * 
FROM pessoa 
LEFT OUTER JOIN filme 
ON pessoa.filme_preferido = filme.id;


SELECT pessoa.id as id_pessoa, pessoa.nome, filme.id as id_filme, filme.titulo 
FROM pessoa 
LEFT OUTER JOIN filme ON pessoa.filme_preferido = filme.id;


SELECT pessoa.id as id_pessoa, pessoa.nome, filme.id as id_filme, filme.titulo 
FROM pessoa 
RIGHT OUTER JOIN filme ON pessoa.filme_preferido = filme.id;
