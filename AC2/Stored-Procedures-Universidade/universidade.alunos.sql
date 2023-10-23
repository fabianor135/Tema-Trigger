CREATE TABLE `alunos` (
  `AlunoID` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(100) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `CursoID` int DEFAULT NULL,
  PRIMARY KEY (`AlunoID`),
  KEY `CursoID` (`CursoID`),
  CONSTRAINT `alunos_ibfk_1` FOREIGN KEY (`CursoID`) REFERENCES `cursos` (`CursoID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

SELECT * FROM universidade.alunos;