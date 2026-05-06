USE procedimentos;

DELIMITER $$

CREATE PROCEDURE obter_materias_do_aluno(in p_id INT)
BEGIN
    SELECT 
    aluno.nome_aluno, 
    disciplina.nome_disciplina as disciplina
    FROM aluno
    JOIN matricula
    on matricula.id_aluno = aluno.id_aluno
    JOIN disciplina
    ON matricula.id_disciplina = disciplina.id_disciplina
    WHERE aluno.id_aluno = p_id;
END $$

DELIMITER ;

call obter_materias_do_aluno(3);