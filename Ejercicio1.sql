-- Crear la Base de Datos
create database ejercicio1
charset utf8mb4
collate utf8mb4_spanish2_ci;
-- Activar la base de datos
use ejercicio1;
-- Crear la Tabla ciudades
create table ciudades (
idCiudad int auto_increment,
nombreCiudad varchar(45),
primary key (idCiudad)
);
-- Crear la tabla monumentos
CREATE TABLE monumentos (
    idMonumento INT AUTO_INCREMENT,
    nombreMonumento VARCHAR(45),
    fechaConstruccionMonumento DATE,
    idCiudadFK INT,
    PRIMARY KEY (idMonumento),
    FOREIGN KEY (idCiudadFK)
        REFERENCES ciudades (idCiudad)
);