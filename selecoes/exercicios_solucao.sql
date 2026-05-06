USE selecoes;

--1 Selecione todos os dados da tabela "compras".
SELECT * FROM compras;

--2 Selecione o nome do cliente e o nome do produto de todas as compras.

SELECT nome_cliente, nome_produto FROM compras;

--3 Selecione todos os produtos comprados pelo cliente Ana Oliveira.

SELECT nome_produto FROM compras WHERE nome_cliente = 'Ana Oliveira';

--4 Selecione o nome do cliente e a forma de pagamento para todas as compras. A coluna forma_pagamento deve aparecer na resposta com o nome "pagamento".

SELECT nome_cliente, forma_pagamento as pagamento FROM compras;

--5 Selecione todas as compras feitas em 28/10/2022.

SELECT * FROM compras WHERE data_compra = '2022-10-28';

--6 Selecione todas as compras feitas por clientes com nome começando com 'A'.

SELECT * FROM compras WHERE nome_cliente LIKE 'A%'

--7 Selecione o nome do cliente, o nome do produto e quantidade de todas as compras feitas por clientes que compraram mais de 5 unidades de um produto.

SELECT nome_cliente, nome_produto, quantidade FROM compras WHERE quantidade > 5;

--8 Selecione o nome do cliente, o nome do produto e o preço total (quantidade * preço unitário) para cada compra.

SELECT nome_cliente, nome_produto, preco_produto , quantidade * preco_produto as preco_total FROM compras

--9 Selecione todas as compras feitas por clientes que gastaram mais de $2000 no total (considere o preço do frete).

SELECT * FROM compras WHERE quantidade * preco_produto + preco_frete > 2000;

--10 Selecione o id, o nome do cliente, o nome do produto e a quantidade de todas as compras feitas depois de 26/09/2022.

SELECT id_compra, nome_cliente, nome_produto, quantidade FROM compras WHERE data_compra > '2022-09-26'

--11 Selecione o total gasto por cada cliente.

SELECT nome_cliente, quantidade * preco_produto + preco_frete as total_gasto FROM compras;

--12 Selecione a quantidade média de cada produto comprado.

SELECT nome_produto, AVG(quantidade) as media_quantidade FROM compras GROUP BY nome_produto;

--13 Selecione o nome do cliente e a quantidade total de produtos comprados por esse cliente.

SELECT nome_cliente, sum(quantidade) FROM compras GROUP BY nome_cliente;

--14 Selecione o nome do produto e o preço médio desse produto. Mostre o resultado ordenando os produtos do maior preço médio para o menor

SELECT nome_produto, AVG(preco_produto) as produto_media FROM compras GROUP BY nome_produto ORDER BY produto_media DESC;

--15 Selecione a compra com o menor preço de frete.

SELECT * FROM compras ORDER BY preco_frete ASC LIMIT 1

--16 Selecione o nome do cliente e o total gasto em compras feitas com pix.

SELECT nome_cliente, sum(quantidade * preco_produto + preco_frete) as total_gasto FROM compras WHERE forma_pagamento = "pix" GROUP BY nome_cliente;

--17 Selecione a forma de pagamento mais popular.

SELECT forma_pagamento, COUNT(*) as usos FROM compras GROUP BY forma_pagamento ORDER BY usos DESC LIMIT 1