CREATE database Ejercicio7
charset utf8mb4
collate utf8mb4_spanish2_ci;

USE ejercicio7;

CREATE TABLE departamentos (
idDepartamento int auto_increment,
nombreDepartamento Varchar(45),
Primary Key (idDepartamento) 
);

CREATE TABLE empleados (
idEmpleado int auto_increment,
nombreEmpleado varchar(45),
primerApellidoEmpleado varchar(45),
segundoApellidoEmpleado varchar(45),
cargoEmpleado varchar(45),
dniEmpleado varchar(9),
idDepartamentoFK INT,
Primary key (idEmpleado),
Foreign key (idDepartamentoFK)
	references departamentos (idDepartamento)
);
-- 
insert into departamentos values(
 null, 'Administración'
);
-- 
/* Insertar manual
INSERT INTO `ejercicio7`.`departamentos` (`nombreDepartamento`) VALUES ('Marketing');
INSERT INTO `ejercicio7`.`departamentos` (`nombreDepartamento`) VALUES ('Comercial');
*/
-- insertar registro manual y aplicando cambios
-- insertar registro mediante csv
select* from departamentos;

select* from empleados;


