USE procedimentos;

--CREATE PROCEDURE IF NOT EXISTS obter_aluno_disciplinas()

DELIMITER $$

CREATE PROCEDURE obter_aluno_disciplinas()
BEGIN
    SELECT 
    aluno.id_aluno, 
    aluno.nome_aluno, 
    disciplina.id_disciplina, 
    disciplina.nome_disciplina
    FROM aluno
    JOIN matricula
    on matricula.id_aluno = aluno.id_aluno
    JOIN disciplina
    ON matricula.id_disciplina = disciplina.id_disciplina;
END $$

DELIMITER ;

CALL obter_aluno_disciplinas();