CREATE DEFINER=`root`@`localhost` PROCEDURE `SelecionarCursos`()
BEGIN
    SELECT CursoID, Nome, ProfessorID
    FROM cursos;
END