USE selecoes;

DROP TABLE compras;

create table compras (
	id_compra int primary key,
	nome_cliente varchar(17) not null,
	nome_produto varchar(8) not null,
	quantidade int not null,
	preco_produto decimal(5,2) not null,
	data_compra date not null,
	forma_pagamento enum('boleto', 'pix', 'crédito', 'débito'),
	preco_frete decimal(4,2) not null
);


insert into compras (id_compra, nome_cliente, nome_produto, quantidade, preco_produto, data_compra, forma_pagamento, preco_frete) values (1, 'Rafael Sousa', 'sapato', 7, 224.51, '2022/09/26', 'pix', 55.49);
insert into compras (id_compra, nome_cliente, nome_produto, quantidade, preco_produto, data_compra, forma_pagamento, preco_frete) values (2, 'Carolina Vieira', 'tênis', 9, 100.63, '2022/11/18', 'boleto', 63.15);
insert into compras (id_compra, nome_cliente, nome_produto, quantidade, preco_produto, data_compra, forma_pagamento, preco_frete) values (3, 'Sofia Pereira', 'tênis', 1, 128.98, '2022/07/18', 'crédito', 24.98);
insert into compras (id_compra, nome_cliente, nome_produto, quantidade, preco_produto, data_compra, forma_pagamento, preco_frete) values (4, 'Ana Oliveira', 'tênis', 5, 290.96, '2022/08/07', 'crédito', 22.15);
insert into compras (id_compra, nome_cliente, nome_produto, quantidade, preco_produto, data_compra, forma_pagamento, preco_frete) values (5, 'Marcos Lima', 'tênis', 9, 276.17, '2022/01/21', 'pix', 23.59);
insert into compras (id_compra, nome_cliente, nome_produto, quantidade, preco_produto, data_compra, forma_pagamento, preco_frete) values (6, 'Rafael Sousa', 'bolsa', 8, 259.83, '2022/08/09', 'boleto', 58.34);
insert into compras (id_compra, nome_cliente, nome_produto, quantidade, preco_produto, data_compra, forma_pagamento, preco_frete) values (7, 'Carolina Vieira', 'calça', 7, 241.89, '2022/07/09', 'boleto', 47.94);
insert into compras (id_compra, nome_cliente, nome_produto, quantidade, preco_produto, data_compra, forma_pagamento, preco_frete) values (8, 'Mateus Nunes', 'chapéu', 5, 293.43, '2022/10/28', 'débito', 60.81);
insert into compras (id_compra, nome_cliente, nome_produto, quantidade, preco_produto, data_compra, forma_pagamento, preco_frete) values (9, 'Luana Almeida', 'bolsa', 10, 168.19, '2022/04/07', 'crédito', 43.23);
insert into compras (id_compra, nome_cliente, nome_produto, quantidade, preco_produto, data_compra, forma_pagamento, preco_frete) values (10, 'Ana Oliveira', 'camiseta', 10, 200.65, '2022/01/02', 'boleto', 34.05);
insert into compras (id_compra, nome_cliente, nome_produto, quantidade, preco_produto, data_compra, forma_pagamento, preco_frete) values (11, 'Pedro Costa', 'calça', 3, 157.83, '2022/09/25', 'boleto', 27.42);
insert into compras (id_compra, nome_cliente, nome_produto, quantidade, preco_produto, data_compra, forma_pagamento, preco_frete) values (12, 'Luana Almeida', 'sapato', 3, 135.58, '2022/05/20', 'boleto', 59.6);
insert into compras (id_compra, nome_cliente, nome_produto, quantidade, preco_produto, data_compra, forma_pagamento, preco_frete) values (13, 'Maria Silva', 'calça', 1, 90.48, '2022/01/06', 'pix', 35.8);
insert into compras (id_compra, nome_cliente, nome_produto, quantidade, preco_produto, data_compra, forma_pagamento, preco_frete) values (14, 'Sofia Pereira', 'chapéu', 4, 179.69, '2022/01/28', 'boleto', 28.36);
insert into compras (id_compra, nome_cliente, nome_produto, quantidade, preco_produto, data_compra, forma_pagamento, preco_frete) values (15, 'Rafael Sousa', 'tênis', 9, 146.92, '2022/11/20', 'débito', 38.57);
insert into compras (id_compra, nome_cliente, nome_produto, quantidade, preco_produto, data_compra, forma_pagamento, preco_frete) values (16, 'Ana Oliveira', 'bolsa', 10, 163.44, '2022/09/03', 'débito', 47.42);
insert into compras (id_compra, nome_cliente, nome_produto, quantidade, preco_produto, data_compra, forma_pagamento, preco_frete) values (17, 'Maria Silva', 'bolsa', 5, 214.93, '2022/10/27', 'boleto', 39.8);
insert into compras (id_compra, nome_cliente, nome_produto, quantidade, preco_produto, data_compra, forma_pagamento, preco_frete) values (18, 'João Santos', 'tênis', 5, 234.69, '2022/03/23', 'pix', 26.12);
insert into compras (id_compra, nome_cliente, nome_produto, quantidade, preco_produto, data_compra, forma_pagamento, preco_frete) values (19, 'João Santos', 'calça', 9, 268.07, '2022/12/07', 'crédito', 64.51);
insert into compras (id_compra, nome_cliente, nome_produto, quantidade, preco_produto, data_compra, forma_pagamento, preco_frete) values (20, 'Ana Oliveira', 'bolsa', 6, 151.71, '2022/10/28', 'débito', 66.51);