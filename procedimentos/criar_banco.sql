CREATE DATABASE IF NOT EXISTS procedimentos;
USE procedimentos;

CREATE TABLE IF NOT EXISTS aluno(
    id_aluno INT PRIMARY KEY AUTO_INCREMENT,
    nome_aluno VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS disciplina(
    id_disciplina INT PRIMARY KEY AUTO_INCREMENT,
    nome_disciplina VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS matricula (
    id_aluno INT NOT NULL,
    id_disciplina INT NOT NULL,
    PRIMARY KEY(id_aluno, id_disciplina),
    Foreign Key (id_aluno) REFERENCES aluno(id_aluno),
    Foreign Key (id_disciplina) REFERENCES disciplina(id_disciplina)
);

INSERT INTO aluno (nome_aluno) VALUES
('Ana Silva'), ('Carlos Santos'), ('Mariana Oliveira');

INSERT INTO disciplina (nome_disciplina) VALUES
('Matemática'), ('História'), ('Inglês');

INSERT INTO matricula (id_aluno, id_disciplina) VALUES
(1, 1), (1, 2), (2, 1), (3, 3);

SELECT * FROM aluno;
SELECT * FROM disciplina;
SELECT * FROM matricula;
