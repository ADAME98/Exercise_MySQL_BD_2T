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
modeloCoche varchar (45)
);

CREATE TABLE historico(
idHistorico int auto_increment,
matriculaCocheFK varchar(8),
dniPersonaFK varchar(9),
fechaDesde date,
fechaHasta date,
Primary Key (idHistorico),
Foreign key (matriculaCocheFK)
		references (),
);