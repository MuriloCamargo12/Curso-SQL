-- SELECT lista de colunas ou *
-- FROM tabela
-- where condicao

USE selecoes;

SELECT * FROM departamento WHERE id > 1 AND qtde_min_empregados < 5
AND localizacao = 'Bloco A, Primeiro Andar';

SELECT * FROM departamento WHERE id > 1 OR qtde_min_empregados < 5
OR localizacao = 'Bloco A, Primeiro Andar';

SELECT * FROM departamento WHERE NOT localizacao = "Bloco A, Primeiro Andar"