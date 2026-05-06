USE selecoes;

SELECT * FROM departamento;

SELECT COUNT(*) as total FROM departamento;

SELECT sum(qtde_min_empregados) as total FROM departamento;


SELECT avg(qtde_min_empregados) as media FROM departamento;

SELECT min(qtde_min_empregados) as minimo,
max(qtde_min_empregados) as maximo FROM departamento;

