USE procedimentos;

DELIMITER $$

CREATE PROCEDURE fazer_matricula(
    in a_id INT,
    in d_id INT
)
BEGIN
    INSERT INTO matricula (id_aluno, id_disciplina) VALUES
    (a_id, d_id);
END $$

DELIMITER ;

CALL fazer_matricula(2, 2);