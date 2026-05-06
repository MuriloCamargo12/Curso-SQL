USE selecoes;

SELECT nome, status, localizacao FROM departamento
WHERE STATUS = 'Ativo'
UNION
SELECT nome, status, localizacao FROM departamento
WHERE STATUS = 'Inativo';


USE selecoes;

SELECT nome, status, localizacao FROM departamento
WHERE STATUS = 'Ativo' OR qtde_min_empregados > 5
INTERSECT
SELECT nome, status, localizacao FROM departamento
WHERE STATUS = 'Inativo' OR qtde_min_empregados < 5;


SELECT nome, status FROM departamento
WHERE STATUS = 'Ativo'
EXCEPT
SELECT nome, status FROM departamento
WHERE qtde_min_empregados < 5;


SELECT nome, status FROM departamento
WHERE qtde_min_empregados < 5
EXCEPT
SELECT nome, status FROM departamento
WHERE STATUS = 'Ativo';