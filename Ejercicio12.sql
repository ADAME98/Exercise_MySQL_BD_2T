CREATE database ejercicio12
charset utf8mb4
collate utf8mb4_spanish2_ci;

USE ejercicio12;

CREATE TABLE personas(
dniPersona varchar (9),
nombrePersona varchar (45),
ApellidoPersona varchar (75),
direccionPersona varchar (100),
Primary key (dniPersona)
);

CREATE TABLE coches(
matriculaCoche varchar (8),
marcaCoche varchar (45),
colorCoche varchar (45),
modeloCoche varchar (45),
Primary key (matriculaCoche)
);

CREATE TABLE historico(
idHistorico int auto_increment,
matriculaCocheFK varchar(8),
dniPersonaFK varchar(9),
fechaDesde date,
fechaHasta date,
Primary Key (idHistorico),
Foreign key (matriculaCocheFK)
		references coches(matriculaCoche),
Foreign key (dniPersonaFK)
		references personas(dniPersona)
);

SELECT*FROM personas;

INSERT INTO `ejercicio12`.`personas` (`dniPersona`, `nombrePersona`, `ApellidoPersona`, `direccionPersona`) VALUES ('47569847H', 'Manuel', 'Ramirez', 'C/Sahara');
INSERT INTO `ejercicio12`.`personas` (`dniPersona`, `nombrePersona`, `ApellidoPersona`, `direccionPersona`) VALUES ('25484587T', 'Ismael', 'Tunez', 'C/Velazquez');

INSERT INTO personas value(
'12345678F','Jaime','Gomez','C/San Dima'

);
INSERT INTO personas value(
'12345678E','Lucia','Gonzalez','C/San Jorge'
);

SELECT*FROM coches;

INSERT INTO `ejercicio12`.`coches` (`matriculaCoche`, `marcaCoche`, `colorCoche`, `modeloCoche`) VALUES ('4565KCB', 'Opel', 'Azul', 'Astra');
INSERT INTO `ejercicio12`.`coches` (`matriculaCoche`, `marcaCoche`, `colorCoche`, `modeloCoche`) VALUES ('1587GBV', 'Kia', 'Blanco', 'Ceed');

INSERT INTO coches value(
'9865DCJ','Ferrari','Rojo','laFerrari'
);
INSERT INTO coches value(
'7894FHD','Porche','Verde','Panamera'
);

SELECT*FROM historico;