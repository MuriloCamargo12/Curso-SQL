-- Criar uma tabela produto e colocar 1 dado dentro dessa tabela
-- id, codigo_barram nome, descricao, preco, quantidade_estoque
-- dados_tecnicos, status (disponível, indisponível)
-- info_frete (fragil, segurado, perecível, volumoso), data_cadastro

USE tipos_dados

DROP TABLE produto;

CREATE TABLE IF NOT EXISTS produto(
    id INT,
    codigo_barra CHAR(13),
    nome VARCHAR(80),
    descricao TEXT,
    preco DECIMAL(7,2),
    quantidade_estoque MEDIUMINT,
    dados_tecnicos JSON,
    status ENUM ('Disponível', 'Indisponível'),
    info_frete SET ('Frágil', 'Segurado', 'Perecível', 'Volumoso'),
    data_cadastro DATE
);

DESC produto

INSERT INTO produto VALUES
(1, '1234567890123', 'Celular', 'Um ótimo celular de uma ótima marca, muito conhecida', 1999.99, 500, '{"modelo": "Xiaomi MI 9", "Ano_fabricacao": 2019, "Tipo_tela": "Oled"}', 'Disponível', 'Frágil,Segurado', '2026-03-28');

SELECT * FROM produto;