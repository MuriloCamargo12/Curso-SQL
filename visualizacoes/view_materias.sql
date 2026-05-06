USE visualizacoes;

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
(1, 1), (1, 2), (2, 1), (3, 3);

CREATE VIEW v_matricula AS
    SELECT  aluno.id as id_aluno,
            aluno.nome as nome_aluno,
            disciplina.id as id_disciplina,
            disciplina.nome as disciplina
    FROM aluno
    JOIN matricula ON matricula.id_aluno = aluno.id
    JOIN disciplina ON matricula.id_disciplina = disciplina.id;


SELECT count(*), nome_aluno as alunos FROM v_matricula GROUP BY nome_aluno;