SHOW PROCEDURE STATUS;

USE procedimentos;
SHOW CREATE PROCEDURE obter_aluno_disciplinas;

SHOW CREATE PROCEDURE procedimentos.obter_aluno_disciplinas;


SHOW PROCEDURE STATUS
WHERE db = 'procedimentos';


SHOW PROCEDURE STATUS
WHERE name LIKE '%aluno%';