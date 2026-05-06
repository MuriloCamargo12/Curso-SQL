use visualizacoes;

ALTER VIEW faixa_salarial AS
SELECT 
    id, nome, salario ,
    CASE
        WHEN salario >= 6000 THEN 'Alto'
        WHEN salario <= 6000 AND salario >= 4000 THEN 'Médio'
        ELSE 'Baixo'
    END AS faixa_salarial
FROM funcionarios;


SELECT * FROM faixa_salarial;



CREATE OR REPLACE VIEW faixa_salarial AS
SELECT 
    id, nome, salario ,
    CASE
        WHEN salario >= 6000 THEN 'Alto'
        WHEN salario <= 6000 AND salario >= 4000 THEN 'Médio'
        ELSE 'Baixo'
    END AS faixa_salarial
FROM funcionarios;