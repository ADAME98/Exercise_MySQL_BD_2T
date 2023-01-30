CREATE database ejercicio10
charset utf8mb4
collate utf8mb4_spanish2_ci;

USE ejercicio10;

CREATE TABLE persona(
idPersona int Auto_increment,
nombrePersona varchar (45),
primerApellidoPersona varchar (45),
segundoApellidoPersona varchar (45),
telefonoPersona varchar (9),
correoElectronicoPersona varchar (100),
Primary key (idPersona)
);


CREATE TABLE vehiculos (
idVehiculo int auto_increment,
marcaVehiculo varchar(45),
modeloVehiculo varchar(45),
fechaFabricacionVehiculo DATE,
tipoVehiculo varchar (45),
matriculaVehiculo varchar (8),
fechaMatriculacionVehiculo date,
fechaBajaVehiculo date,
Primary key (idVehiculo)
);

CREATE TABLE posesiones (
idPosesion int auto_increment,
idPersonaFK int,
idVehiculoFK int,
fechaDesde date,
fechaHasta date,
primary key (idPosesion),
foreign key (idPersonaFK)
	references persona(idPersona),
foreign key (idVehiculoFK)
	references vehiculos(idVehiculo)
);

select *from vehiculos;

insert into vehiculos values(
  null,'Kia', 'Gris','2000-02-12','Deportivo','4758FML','2001-01-15','2022-05-24'
),
(
 null,'Ferrari', 'Rojo','2002-03-14','Deportivo','4758FML','2003-01-14','2022-01-22'
);

select * from persona;

insert into persona values(
null,'Manuel','Arri','Fernandez','123356987','manuel@hotmail.es'
),
(
null,'Antonio','Montal','Fer','123455987','ant@hotmail.es'
);

INSERT INTO `ejercicio10`.`persona` (`nombrePersona`, `primerApellidoPersona`, `segundoApellidoPersona`, `telefonoPersona`, `correoElectronicoPersona`) VALUES ('Esteban', 'Cod', 'malo', '123456889', 'esteban@hotmail.es');
INSERT INTO `ejercicio10`.`persona` (`nombrePersona`, `primerApellidoPersona`, `segundoApellidoPersona`, `telefonoPersona`, `correoElectronicoPersona`) VALUES ('Victor', 'lamela', 'caca', '122354565', 'victor@hotmail.es');


INSERT INTO `ejercicio10`.`vehiculos` (`marcaVehiculo`, `modeloVehiculo`, `fechaFabricacionVehiculo`, `tipoVehiculo`, `matriculaVehiculo`, `fechaMatriculacionVehiculo`, `fechaBajaVehiculo`) VALUES ('feasd', 'etyhtr', '2001-05-05', 'Familiar', '3654RTU', '2002-02-20', '2022-01-15');
INSERT INTO `ejercicio10`.`vehiculos` (`marcaVehiculo`, `modeloVehiculo`, `fechaFabricacionVehiculo`, `tipoVehiculo`, `matriculaVehiculo`, `fechaMatriculacionVehiculo`, `fechaBajaVehiculo`) VALUES ('Citroen', 'cactus', '2002-09-29', 'Familiar', '1849CDR', '2003-04-19', '2022-05-08');
UPDATE `ejercicio10`.`vehiculos` SET `matriculaVehiculo` = '4358DGL' WHERE (`idVehiculo` = '2');

