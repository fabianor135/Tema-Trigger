CREATE TABLE `professores` (
  `ProfessorID` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(100) NOT NULL,
  `Aula` varchar(100) NOT NULL,
  PRIMARY KEY (`ProfessorID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
SELECT * FROM universidade.professores;