USE juncoes;

create table clientes (
	id_cliente int primary key,
	nome_completo varchar(50) not null,
	email varchar(50) not null,
	telefone varchar(50) not null,
	endereco varchar(50) not null
);

insert into clientes (id_cliente, nome_completo, email, telefone, endereco) values (1, 'Brinn Lory', 'blory0@friendfeed.com', '343-625-8493', '76 Meadow Valley Place');
insert into clientes (id_cliente, nome_completo, email, telefone, endereco) values (2, 'Fitz Bradburne', 'fbradburne1@time.com', '373-927-8626', '05 Carpenter Crossing');
insert into clientes (id_cliente, nome_completo, email, telefone, endereco) values (3, 'Ina Pilkinton', 'ipilkinton2@sun.com', '618-380-4933', '6 Bultman Junction');
insert into clientes (id_cliente, nome_completo, email, telefone, endereco) values (4, 'Jeanie Brenton', 'jbrenton3@gov.uk', '278-394-8290', '89 Kenwood Junction');
insert into clientes (id_cliente, nome_completo, email, telefone, endereco) values (5, 'Dorri Erdes', 'derdes4@vinaora.com', '275-685-8126', '891 Esch Way');
insert into clientes (id_cliente, nome_completo, email, telefone, endereco) values (6, 'Tabbitha Ivain', 'tivain5@vistaprint.com', '886-392-5849', '0314 Elgar Alley');
insert into clientes (id_cliente, nome_completo, email, telefone, endereco) values (7, 'Julieta McKibbin', 'jmckibbin6@nyu.edu', '862-954-3702', '14344 Schlimgen Park');
insert into clientes (id_cliente, nome_completo, email, telefone, endereco) values (8, 'Laural Mauvin', 'lmauvin7@msn.com', '358-462-8107', '15 Service Court');
insert into clientes (id_cliente, nome_completo, email, telefone, endereco) values (9, 'Sean Pardon', 'spardon8@cocolog-nifty.com', '574-793-6823', '103 North Terrace');
insert into clientes (id_cliente, nome_completo, email, telefone, endereco) values (10, 'Mahmoud Mingard', 'mmingard9@sohu.com', '435-155-1715', '7 Randy Way');

create table produtos (
	id_produto int primary key,
	nome_produto varchar(8) not null,
	preco decimal(6,2) not null,
	descricao text not null,
	cor varchar(50) not null,
	tamanho varchar(2) not null,
	estacao varchar(9) not null
);

insert into produtos (id_produto, nome_produto, preco, descricao, cor, tamanho, estacao) values (1, 'calça', 215.73, 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 'Violet', 'M', 'inverno');
insert into produtos (id_produto, nome_produto, preco, descricao, cor, tamanho, estacao) values (2, 'camiseta', 852.07, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', 'Teal', 'GG', 'primavera');
insert into produtos (id_produto, nome_produto, preco, descricao, cor, tamanho, estacao) values (3, 'tênis', 970.26, 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 'Fuscia', 'GG', 'primavera');
insert into produtos (id_produto, nome_produto, preco, descricao, cor, tamanho, estacao) values (4, 'chapéu', 91.98, 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 'Pink', 'GG', 'inverno');
insert into produtos (id_produto, nome_produto, preco, descricao, cor, tamanho, estacao) values (5, 'moletom', 510.69, 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 'Pink', 'GG', 'outono');
insert into produtos (id_produto, nome_produto, preco, descricao, cor, tamanho, estacao) values (6, 'camiseta', 922.63, 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 'Aquamarine', 'GG', 'outono');
insert into produtos (id_produto, nome_produto, preco, descricao, cor, tamanho, estacao) values (7, 'sapato', 779.52, 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 'Yellow', 'G', 'outono');
insert into produtos (id_produto, nome_produto, preco, descricao, cor, tamanho, estacao) values (8, 'camiseta', 967.05, 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 'Turquoise', 'M', 'verao');
insert into produtos (id_produto, nome_produto, preco, descricao, cor, tamanho, estacao) values (9, 'chapéu', 280.29, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', 'Indigo', 'P', 'outono');
insert into produtos (id_produto, nome_produto, preco, descricao, cor, tamanho, estacao) values (10, 'camiseta', 742.8, 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 'Indigo', 'M', 'outono');


create table compras (
	id_produto int not null,
	id_cliente int not null,
	quantidade int not null,
	frete decimal(5,2) not null,
	data date,
	metodo_pagamento enum('pix', 'crédito', 'débito'),
	status enum('em processamento', 'a caminho', 'entregue'),
    foreign key (id_produto) references produtos(id_produto),
    foreign key (id_cliente) references clientes(id_cliente),
    primary key (id_cliente, id_produto)
);

insert into compras (id_produto, id_cliente, quantidade, frete, data, metodo_pagamento, status) values (5, 7, 4, 46.99, '2022/12/01', 'débito', 'a caminho');
insert into compras (id_produto, id_cliente, quantidade, frete, data, metodo_pagamento, status) values (6, 6, 1, 18.7, '2022/04/10', 'débito', 'entregue');
insert into compras (id_produto, id_cliente, quantidade, frete, data, metodo_pagamento, status) values (4, 1, 2, 82.11, '2022/06/29', 'pix', 'entregue');
insert into compras (id_produto, id_cliente, quantidade, frete, data, metodo_pagamento, status) values (2, 3, 6, 73.82, '2022/02/11', 'débito', 'entregue');
insert into compras (id_produto, id_cliente, quantidade, frete, data, metodo_pagamento, status) values (4, 6, 9, 42.52, '2022/06/01', 'crédito', 'a caminho');
insert into compras (id_produto, id_cliente, quantidade, frete, data, metodo_pagamento, status) values (4, 7, 4, 21.5, '2022/05/09', 'débito', 'a caminho');
insert into compras (id_produto, id_cliente, quantidade, frete, data, metodo_pagamento, status) values (10, 5, 1, 85.32, '2022/11/13', 'débito', 'em processamento');
insert into compras (id_produto, id_cliente, quantidade, frete, data, metodo_pagamento, status) values (10, 8, 3, 14.3, '2022/12/22', 'pix', 'em processamento');
insert into compras (id_produto, id_cliente, quantidade, frete, data, metodo_pagamento, status) values (10, 4, 9, 97.14, '2022/10/11', 'pix', 'entregue');
insert into compras (id_produto, id_cliente, quantidade, frete, data, metodo_pagamento, status) values ( 6, 8, 4, 75.54, '2022/11/15', 'pix', 'entregue');

SELECT * FROM clientes;
SELECT * FROM produtos;
SELECT * FROM compras;


-- 1 Selecione o nome de todos os clientes que fizeram uma compra usando pix.
SELECT clientes.nome_completo, compras.metodo_pagamento FROM clientes
INNER JOIN compras
ON clientes.id_cliente = compras.id_cliente
WHERE metodo_pagamento = 'pix';

-- 2 Selecione a quantidade, o nome e o id do comprador de todos os produtos que tiveram uma venda com menos de 5 unidades;
SELECT 
    produtos.nome_produto,
    compras.quantidade,
    compras.id_cliente
FROM produtos
INNER JOIN compras
ON produtos.id_produto = compras.id_produto
WHERE quantidade > 5;
-- 3 Selecione o nome completo do cliente, o nome do produto e a quantidade comprada para todas as compras.
SELECT
    clientes.nome_completo,
    produtos.nome_produto,
    compras.quantidade
FROM clientes
INNER JOIN compras
ON clientes.id_cliente = compras.id_cliente
INNER JOIN produtos
ON compras.id_produto = produtos.id_produto;
-- 4 Liste todos os clientes, juntamente com as compras que cada cliente realizou.
SELECT 
    clientes.nome_completo,
    compras.id_produto,
    compras.quantidade
FROM clientes
LEFT JOIN compras
ON compras.id_cliente = clientes.id_cliente;
-- 5 Liste os nomes dos produtos e os ids dos clientes que os compraram (inclua produtos que não foram comprados ainda).
SELECT 
    produtos.nome_produto,
    compras.id_cliente
FROM compras
RIGHT JOIN produtos
ON compras.id_produto = produtos.id_produto;
-- 6 Selecione o nome completo do cliente, o nome do produto e a quantidade comprada para todas as compras.
SELECT
    clientes.nome_completo,
    produtos.nome_produto,
    compras.quantidade
FROM clientes
INNER JOIN compras
ON compras.id_cliente = clientes.id_cliente
INNER JOIN produtos
ON produtos.id_produto = compras.id_produto;

-- 7 Selecione o nome completo do cliente, o nome do produto e a quantidade comprada para todas as compras com status "entregue".
SELECT
    clientes.nome_completo,
    produtos.nome_produto,
    compras.quantidade
FROM clientes
INNER JOIN compras
ON clientes.id_cliente = compras.id_cliente
INNER JOIN produtos
ON produtos.id_produto = compras.id_produto
WHERE compras.status = 'entregue';

-- 8 Liste todos os clientes que fizeram uma compra, juntamente com suas compras que possuem um frete maior do que 50.
SELECT
    clientes.nome_completo,
    compras.id_produto,
    compras.quantidade
FROM clientes
JOIN compras
ON compras.id_cliente = clientes.id_cliente
WHERE compras.frete > 50.00;

-- 9 Selecione os nomes de todas as pessoas que compraram uma roupa da estação inverno e as roupas que elas compraram.
SELECT
    clientes.nome_completo,
    produtos.nome_produto,
    produtos.estacao
FROM clientes
INNER JOIN compras
ON clientes.id_cliente = compras.id_cliente
INNER JOIN produtos
WHERE produtos.estacao = 'inverno';
-- 10 Selecione o nome completo do cliente, o nome do produto e a quantidade comprada para todas as compras feitas por clientes cujo telefone contenha "58".
SELECT
    clientes.nome_completo,
    produtos.nome_produto,
    compras.quantidade,
    clientes.telefone
FROM clientes
INNER JOIN compras
ON compras.id_cliente = compras.id_cliente
INNER JOIN produtos
ON produtos.id_produto = produtos.id_produto
WHERE clientes.telefone LIKE '%58%';
-- 11 Mostre todas as compras que foram pagas via "débito" ou que são de produtos na cor "indigo".
SELECT
    clientes.nome_completo,
    produtos.nome_produto,
    compras.quantidade,
    compras.metodo_pagamento,
    produtos.cor
FROM clientes
INNER JOIN compras
ON clientes.id_cliente = compras.id_cliente
INNER JOIN produtos
ON compras.id_produto = produtos.id_produto
WHERE compras.metodo_pagamento = 'débito' or produtos.cor = 'indigo';

-- 12 Liste todos os produtos de tamanho GG incluindo as compras desses produtos, o email dos compradores e a quantidade de produtos comprada.
SELECT
    clientes.email,
    produtos.nome_produto,
    compras.quantidade,
    produtos.tamanho
FROM clientes
INNER JOIN compras
ON clientes.id_cliente = compras.id_cliente
INNER JOIN produtos
WHERE produtos.tamanho = 'GG'
-- 13 Selecione o total de compras por cliente, mostrando apenas os clientes que fizeram exatamente uma compra.

SELECT
    clientes.nome_completo,
    COUNT(compras.id_produto) as total_compras
FROM clientes
INNER JOIN compras
ON clientes.id_cliente = compras.id_cliente
GROUP BY clientes.nome_completo
HAVING total_compras = 1;

-- 14 Selecione o cliente que teve o maior gasto total (considere o valor do produtos, a quantidade e do frete para o cálculo do gasto total).

SELECT 
    clientes.nome_completo,
    SUM(
        (compras.quantidade * produtos.preco) + compras.frete
    ) as preco_total
FROM clientes
INNER JOIN compras
ON compras.id_cliente = clientes.id_cliente
INNER JOIN produtos
ON compras.id_produto = produtos.id_produto
GROUP BY clientes.nome_completo
ORDER BY preco_total DESC
LIMIT 1;

-- 15 Selecione o nome de todos os produtos e a quantidade média de unidades vendidas e o preço médio daquele produto (mostre no resultado também os produtos não vendidos).

SELECT
    produtos.nome_produto,
    AVG(compras.quantidade) as media_qtde,
    AVG(produtos.preco) as media_preco
FROM produtos
LEFT JOIN compras
ON compras.id_produto = produtos.id_produto
GROUP BY produtos.nome_produto;