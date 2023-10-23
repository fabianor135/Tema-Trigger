CREATE DEFINER=`root`@`localhost` PROCEDURE `InserirCurso`(
    IN p_nome_curso VARCHAR(100),
    IN p_professor_id INT
)
BEGIN
    INSERT INTO cursos (Nome, ProfessorID)
    VALUES (p_nome_curso, p_professor_id);
END