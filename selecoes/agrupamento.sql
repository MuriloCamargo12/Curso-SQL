USE selecoes;

DROP TABLE IF EXISTS vendas;

CREATE TABLE IF NOT EXISTS vendas(
    id INT PRIMARY KEY AUTO_INCREMENT,
    produto VARCHAR(50) NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    quantidade INT NOT NULL
);

INSERT INTO vendas (produto, valor, quantidade) VALUES
('A', 100.00, 3),
('B', 150.00, 2),
('A', 120.00, 1),
('C', 200.00, 4),
('B', 180.00, 3);

SELECT * FROM vendas;


('A', 100.00, 3),
('A', 120.00, 1),

('B', 150.00, 2),
('B', 180.00, 3);

('C', 200.00, 4);



SELECT produto, AVG(valor) as media FROM vendas GROUP BY produto;



SELECT produto, sum(quantidade) as quantidade_vendas FROM vendas GROUP BY produto ORDER BY quantidade_vendas DESC LIMIT 1;


SELECT produto, AVG(valor) as media FROM vendas GROUP BY produto HAVING media > 170;