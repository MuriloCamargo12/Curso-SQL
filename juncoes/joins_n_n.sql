USE juncoes;

CREATE TABLE IF NOT EXISTS aluno(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS disciplina(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS matricula (
    id_aluno INT NOT NULL,
    id_disciplina INT NOT NULL,
    quantidade_creaditos INT DEFAULT 4,
    PRIMARY KEY(id_aluno, id_disciplina),
    Foreign Key (id_aluno) REFERENCES aluno(id),
    Foreign Key (id_disciplina) REFERENCES disciplina(id)
);

INSERT INTO aluno (nome) VALUES
('Ana Silva'), ('Carlos Santos'), ('Mariana Oliveira');

INSERT INTO disciplina (nome) VALUES
('Matemática'), ('História'), ('Inglês');

INSERT INTO matricula (id_aluno, id_disciplina) VALUES
(1, 1), (1, 2), (2, 1);

SELECT aluno.nome as nome_aluno, disciplina.nome as nome_disciplina, matricula.quantidade_creaditos
FROM aluno
INNER JOIN matricula
on matricula.id_aluno = aluno.id
INNER JOIN disciplina
ON disciplina.id = matricula.id_disciplina;