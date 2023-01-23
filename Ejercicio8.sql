CREATE database Ejercicio8
charset utf8mb4
collate utf8mb4_spanish2_ci;

USE ejercicio8;

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
dniEmpleado varchar(9),
Primary key (idEmpleado)
);

CREATE TABLE historico (
idHistorico int auto_increment,
idEmpleadoFK int,
idDepartamentoFK int,
cargoEmpleado varchar(45),
fechaDesde date,
fechaHasta date,
PRIMARY KEY (idHistorico),
FOREIGN KEY (idEmpleadoFK)
		references empleados(idEmpleado),
FOREIGN KEY (idDepartamentoFK)
		references departamentos(idDepartamento)
);

select* FROM DEPARTAMENTOS;
select*from empleados;
select*from historico;

