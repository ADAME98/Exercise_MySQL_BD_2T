CREATE database ejercicio11
charset utf8mb4
collate utf8mb4_spanish2_ci;

USE ejercicio11;

CREATE TABLE clientes (
idCliente int auto_increment,
dniCliente Varchar(9),
nombreCliente varchar(45),
direccionCliente varchar(45),
Primary Key (idCliente) 
);

CREATE TABLE Cuentas (
idCuenta int auto_increment,
tipoCuenta varchar(45),
saldoCuenta decimal(10,2),
Primary Key (idCuenta)
);

CREATE TABLE aperturas (
idClienteFK int,
idCuentaFK int,
fechaApertura date,
primary key (idClienteFK,idCuentaFK),
foreign key (idClienteFK)
	references clientes (idCliente),
foreign key (idCuentaFK)
	references Cuentas (idCuenta)
);

select *from clientes;

INSERT INTO `ejercicio11`.`clientes` (`dniCliente`, `nombreCliente`, `direccionCliente`) VALUES ('12345678A', 'Esteban', 'C/Chetado');
INSERT INTO `ejercicio11`.`clientes` (`dniCliente`, `nombreCliente`, `direccionCliente`) VALUES ('12345678B', 'Victor', 'C/Mirón');

INSERT INTO clientes value(
null,'12345678E','Lucia','C/San Jorge'

);
INSERT INTO clientes value(
null,'12345678F','Jaime','C/San Dima'

);

select *from Cuentas;
INSERT INTO `ejercicio11`.`Cuentas` (`tipoCuenta`, `saldoCuenta`) VALUES ('Ahorro', '12000.00');
INSERT INTO `ejercicio11`.`Cuentas` (`tipoCuenta`, `saldoCuenta`) VALUES ('Jubilacion', '14000.00');

INSERT INTO Cuentas value(
null,'Ahorro','12543.32'

);
INSERT INTO Cuentas value(
null,'Jubilacion','4543.65'

);

select *from aperturas;

INSERT INTO aperturas value(
3,'8','2005-10-03'
);
INSERT INTO aperturas value(
4,'9','2006-11-07'
);
