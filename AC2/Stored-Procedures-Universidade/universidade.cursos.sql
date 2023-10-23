CREATE TABLE `cursos` (
  `CursoID` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(100) NOT NULL,
  `ProfessorID` int DEFAULT NULL,
  PRIMARY KEY (`CursoID`),
  KEY `ProfessorID` (`ProfessorID`),
  CONSTRAINT `cursos_ibfk_1` FOREIGN KEY (`ProfessorID`) REFERENCES `professores` (`ProfessorID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
SELECT * FROM universidade.cursos;