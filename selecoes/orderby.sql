USE selecoes;

SELECT * FROM departamento
ORDER BY nome;

SELECT * FROM departamento
ORDER BY nome ASC;

SELECT * FROM departamento
ORDER BY qtde_min_empregados DESC;

SELECT * FROM departamento
ORDER BY localizacao ASC, qtde_min_empregados DESC;