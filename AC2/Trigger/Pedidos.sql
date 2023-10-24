create table Pedidos(
IDPedido int auto_increment primary key,
DataPedido datetime,
NomeCliente varchar(100)
);

INSERT INTO Pedidos (DataPedido, NomeCliente) VALUES ('2023-12-12', 'Carrefour');
INSERT INTO Pedidos (DataPedido, NomeCliente) VALUES ('2023-11-23', 'Tauste');
INSERT INTO Pedidos (DataPedido, NomeCliente) VALUES ('2023-10-01', 'Tenda');
INSERT INTO Pedidos (DataPedido, NomeCliente) VALUES ('2023-10-03', 'Atacadao');
INSERT INTO Pedidos (DataPedido, NomeCliente) VALUES ('2023-09-06', 'Dia');
INSERT INTO Pedidos (NomeCliente) VALUES ('Bom Lugar');

select * from pedidos;

DELIMITER $$
CREATE TRIGGER my_trigger
BEFORE INSERT ON Pedidos
FOR EACH ROW
BEGIN
    SET NEW.DataPedido = NOW();
END$$
DELIMITER ;




