-- Crear la Base de Datos
create database Ejercicio3
charset utf8mb4
collate utf8mb4_spanish2_ci;
-- Activar la Base de Datos
use Ejercicio3;
-- Crear tabla asignaturas 
CREATE TABLE asignatura (
    idAsignatura INT AUTO_INCREMENT,
    nombreAsignatura VARCHAR(45),
    cursoAsignatura INT,
    primary key (idAsignatura)
);
-- Crear tabla Ciclos
create table ciclos (
idCiclo int auto_increment,
nombreCiclo varchar(45),
primary key (idCiclo)
);

-- Crear tabla pertenencias
CREATE TABLE pertenencias (
    idPertenencia INT AUTO_INCREMENT,
    idAsignaturaFK INT,
    idCicloFK INT,
    PRIMARY KEY (idPertenencia),
    FOREIGN KEY (idCicloFK)
        REFERENCES ciclos (idCiclo),
    FOREIGN KEY (idAsignaturaFK)
        REFERENCES asignatura (idAsignatura)
);
