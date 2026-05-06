USE selecoes;

SELECT * FROM departamento WHERE nome = 'Financeiro' or nome = 'Contabilidade' or nome = 'Marketing';

SELECT * FROM departamento WHERE nome IN ('Financeiro', 'Contabilidade', 'Marketing')
