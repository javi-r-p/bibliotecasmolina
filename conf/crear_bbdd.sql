-- CREAR BASE DE DATOS
CREATE DATABASE rmbm;
USE rbmb;

-- CREAR TABLAS
-- TABLA autores
CREATE TABLE autores (
	id SMALLINT UNSIGNED NOT NULL,
    nombre VARCHAR(200) NOT NULL,
    CONSTRAINT PK_autores PRIMARY KEY (id)
);

-- TABLA idiomas
CREATE TABLE idiomas (
	id TINYINT UNSIGNED NOT NULL,
    denominacion VARCHAR(25) UNIQUE NOT NULL,
    CONSTRAINT PK_idiomas PRIMARY KEY (id)
);

-- TABLA areas
CREATE TABLE areas (
	id SMALLINT UNSIGNED NOT NULL,
    denominacion VARCHAR(50) UNIQUE NOT NULL,
    CONSTRAINT PK_areas PRIMARY KEY (id)
);

-- TABLA libros
CREATE TABLE libros (
	isbn INT UNSIGNED NOT NULL,
    titulo VARCHAR(100) NOT NULL,
    descripcion VARCHAR(1000),
    fechaPublicacion DATE NOT NULL,
    autor SMALLINT UNSIGNED NOT NULL,
    idioma TINYINT UNSIGNED NOT NULL,
    area SMALLINT UNSIGNED NOT NULL,
    CONSTRAINT PK_libros PRIMARY KEY (isbn),
    CONSTRAINT FK_librosAutores FOREIGN KEY (autor) REFERENCES autores (id) ON UPDATE CASCADE,
    CONSTRAINT FK_librosIdiomas FOREIGN KEY (idioma) REFERENCES idiomas (id) ON UPDATE CASCADE,
    CONSTRAINT FK_librosAreas FOREIGN KEY (area) REFERENCES areas (id) ON UPDATE CASCADE
);

-- TABLA ejemplares
CREATE TABLE ejemplares (
	id INT UNSIGNED NOT NULL,
    formato VARCHAR(20) NOT NULL,
    numPaginas SMALLINT UNSIGNED NOT NULL,
    isbn INT UNSIGNED,
    CONSTRAINT PK_ejemplares PRIMARY KEY (id),
    CONSTRAINT FK_ejemplaresLibros FOREIGN KEY (isbn) REFERENCES libros (isbn) ON UPDATE CASCADE ON DELETE CASCADE
);

-- TABLA socios
CREATE TABLE socios (
	id INT UNSIGNED NOT NULL,
    dni VARCHAR(9) UNIQUE NOT NULL,
    nombre VARCHAR(200) NOT NULL,
    correo VARCHAR(100) UNIQUE NOT NULL,
    fechaNacimiento DATE NOT NULL,
    clave VARCHAR(100) NOT NULL,
    CONSTRAINT PK_socios PRIMARY KEY (socios)
);

-- TABLA prestamos
CREATE TABLE prestamos (
	fechaPrestamo TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    fechaDevEsperada DATE NOT NULL,
    fechaDevolucion DATE,
	socio INT UNSIGNED NOT NULL,
    ejemplar INT UNSIGNED NOT NULL,
    CONSTRAINT PK_prestamo PRIMARY KEY (fechaPrestamo),
    CONSTRAINT FK_prestamosSocios FOREIGN KEY (socio) REFERENCES socios (id) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT FK_prestamosEjemplar FOREIGN KEY (ejemplar) REFERENCES ejemplares (id) ON UPDATE CASCADE ON DELETE CASCADE
);

-- TABLA sanciones
CREATE TABLE sanciones (
	fechaInicio DATE NOT NULL,
    fechaFin DATE NOT NULL,
    socio INT UNSIGNED NOT NULL,
    CONSTRAINT PK_sanciones PRIMARY KEY (fechaInicio, fechaFin, socio),
    CONSTRAINT FK_sancionesSocios FOREIGN KEY (socio) REFERENCES socios (id) ON UPDATE CASCADE ON DELETE CASCADE
);

-- TABLA empleados
CREATE TABLE empleados (
	id INT UNSIGNED NOT NULL,
    nombre VARCHAR(200) NOT NULL,
    correo VARCHAR(40) NOT NULL,
    clave VARCHAR(100) NOT NULL,
    administrador BOOLEAN,
    CONSTRAINT PK_empleados PRIMARY KEY (id)
);

-- Crear usuarios y asignar permisos
CREATE USER 'consultas'@'localhost' IDENTIFIED BY 'consultas';
GRANT SELECT ON rmbm.* TO 'consultas'@'localhost';

CREATE USER 'rmbm'@'localhost' IDENTIFIED BY 'rmbm';
GRANT ALL PRIVILEGES ON rmbm.* TO 'rmbm'@'localhost';

FLUSH PRIVILEGES;
