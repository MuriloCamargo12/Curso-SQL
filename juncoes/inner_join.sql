USE juncoes;

SELECT * FROM pessoa INNER JOIN filme ON pessoa.filme_preferido = filme.id;


SELECT pessoa.id as id_pessoa, filme.id as id_filme, pessoa.nome, filme.titulo FROM pessoa INNER JOIN filme ON pessoa.filme_preferido = filme.id;



SELECT pessoa.id as id_pessoa, filme.id as id_filme, pessoa.nome, filme.titulo FROM pessoa JOIN filme ON pessoa.filme_preferido = filme.id;