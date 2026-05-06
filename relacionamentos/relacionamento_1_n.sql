USE relacionamentos;

CREATE TABLE IF NOT EXISTS usuario(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL
);


CREATE TABLE IF NOT EXISTS postagem(
    id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(100) NOT NULL,
    id_usuario INT NOT NULL,
    Foreign Key (id_usuario) REFERENCES usuario(id)
);

INSERT INTO usuario (nome) VALUES
('João Silva'), ('Maria Oliveira'), ('Carlos Santos');


INSERT INTO postagem (titulo, id_usuario) VALUES
('Primeira Postagem', 1),
('Segunda Postagem', 2),
('Terceira Postagem', 3);

SELECT * FROM usuario;
SELECT * FROM postagem;


INSERT INTO postagem (titulo, id_usuario) VALUES
('Quarta Postagem', 1),
('Quinta Postagem', 2),
('Sexta Postagem', 3);


SELECT * FROM usuario;
SELECT * FROM postagem;


INSERT INTO postagem (titulo, id_usuario) VALUES
('Quarta Postagem', 10);