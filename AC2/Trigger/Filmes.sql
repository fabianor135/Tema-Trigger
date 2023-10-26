CREATE TABLE Filmes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(60),
    minutos INT
);

insert into Filmes (titulo, minutos) values("The terrible trigger", 120);
insert into Filmes (titulo, minutos) values("O alto da comparecida", 135);
insert into Filmes (titulo, minutos) values("Faroeste caboclo", 240);
insert into Filmes (titulo, minutos) values("The matrix", 90);
insert into Filmes (titulo, minutos) values("Blade runer", -88);
insert into Filmes (titulo, minutos) values("O labirinto do fauno", 110);
insert into Filmes (titulo, minutos) values("Metropole", 0);
insert into Filmes (titulo, minutos) values("A lista", 120);
INSERT INTO Filmes (titulo, minutos) VALUES ('Alien 3', -10);
select * from filmes;



DELIMITER $$
CREATE TRIGGER chk_minutos BEFORE INSERT ON Filmes
FOR EACH ROW
BEGIN
    IF NEW.minutos <= 0 THEN
      set new.minutos = null;
    END IF;
END$$
DELIMITER ;



DELIMITER $$
CREATE TRIGGER chk_minutos BEFORE INSERT ON Filmes
FOR EACH ROW
BEGIN
    IF NEW.minutos <= 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Valor inválido para minutos',        
        mysql_errno = 2022;
    END IF;
END$$
DELIMITER ;


create table Log_deletions(
id INT AUTO_INCREMENT PRIMARY KEY,
titulo VARCHAR(60),
quando datetime,
quem varchar(40)
);

DELIMITER $$
CREATE TRIGGER log_deletions AFTER DELETE ON Filmes
FOR EACH ROW
BEGIN
    INSERT INTO Log_deletions VALUES (NULL, OLD.titulo, NOW(), USER());
END$$
DELIMITER ;
select * from log_deletions;













