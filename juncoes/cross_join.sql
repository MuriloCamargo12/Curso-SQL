USE juncoes;

SELECT pessoa.id as id_pessoa, pessoa.nome, filme.id as id_filme, filme.titulo 
FROM pessoa 
CROSS JOIN filme;