USE selecoes;

SELECT * from departamento WHERE localizacao LIKE 'Bloco B%';

SELECT * from departamento WHERE localizacao LIKE '%Primeiro Andar%';


SELECT * FROM departamento WHERE nome LIKE '%abilidade';


SELECT * FROM departamento WHERE nome LIKE '_inanceiro';


SELECT * from departamento WHERE localizacao LIKE 'Bloco _, Primeiro Andar';

SELECT * from departamento WHERE localizacao LIKE '_loco %';