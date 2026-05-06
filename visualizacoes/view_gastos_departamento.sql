USE visualizacoes;

SELECT * FROM funcionarios;

CREATE VIEW gastos_departamentos AS 
    SELECT departamento as nome, sum(salario) as gastos_salarios FROM funcionarios
    GROUP BY departamento ORDER BY gastos_salarios DESC;


SELECT nome, gastos_salarios * 12 as anual FROM gastos_departamentos ORDER BY gastos_salarios;