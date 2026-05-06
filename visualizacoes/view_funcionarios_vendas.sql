USE visualizacoes;

CREATE VIEW funcionarios_vendas as
    SELECT id, nome, salario FROM funcionarios WHERE departamento = 'Vendas';

SELECT * FROM funcionarios_vendas;


INSERT INTO funcionarios(nome, salario, departamento) VALUES
('Pedro', 5000, 'Vendas');
