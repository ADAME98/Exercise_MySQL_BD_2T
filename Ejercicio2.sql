-- Crear la Base de Datos
create database Ejercicio2
charset utf8mb4
collate utf8mb4_spanish2_ci;
-- Activar la Base de Datos
use Ejercicio2;
-- Crear la tabla Continente 
CREATE TABLE continentes (
    idContinente INT AUTO_INCREMENT,
    nombreContinente VARCHAR(45),
    PRIMARY KEY (idContinente)
);
-- Crear la tabla Paises
CREATE TABLE paises (
    idPais INT AUTO_INCREMENT,
    nombrePais VARCHAR(45),
    idContinenteFK INT,
    PRIMARY KEY (idPais),
    FOREIGN KEY (idContinenteFK)
        REFERENCES paises (idPais)
);
-- Crear la Tabla ciudades
CREATE TABLE ciudades (
    idCiudad INT AUTO_INCREMENT,
    nombreCiudad VARCHAR(45),
    esCapital BIT(1),
    idPaisFK INT,
    PRIMARY KEY (idCiudad),
    FOREIGN KEY (idPaisFK)
        REFERENCES Ciudades (idCiudad)
);