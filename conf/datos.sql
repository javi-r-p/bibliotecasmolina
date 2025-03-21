-- INSERCION DE DATOS EN LA BASE DE DATOS
-- TABLA autores: id, nombre
INSERT INTO autores VALUES (1, 'Isabel Allende');

-- TABLA idiomas: id, denominacion
INSERT INTO idiomas VALUES (1, 'Español');

-- TABLA areas: id, denominacion
INSERT INTO areas VALUES (1, 'Romance');

-- TABLA libros: isbn, titulo, descripcion, fechaPublicacion, autor, idioma, area
INSERT INTO libros VALUES (9788401015724, 'El Amante Japonés', 'La historia de amor entre la joven Alma Velasco y el jardinero japones Ichimei conduce al lector por un recorrido a traves de diversos escenarios que van desde la Polonia de la Segunda Guerra Mundial hasta el San Francisco de nuestros días.', 2015, 1, 1, 1);

-- TABLA ejemplares: id, paginas, isbn
INSERT INTO ejemplares VALUES (1, 352, 9788401015724);

-- TABLA socios: id, dni, nombre, fechaNacimiento, correo, clave

-- TABLA prestamos: fechaPrestamo, fechaDevEsperada, fechaDevolucion, socio, ejemplar

-- TABLA sanciones: fechaInicio, fechaFin, socio

-- TABLA empleados: id, nombre, correo, clave, administrador
INSERT INTO empleados VALUES (1, 'Javier Rodríguez Parra', 'jrodriguez@rmbm.es', '0d14e03c4f2ad979b6836a076a5ad41858f81bfb688c889fe0628eefcf4194c6', 1);
INSERT INTO empleados VALUES (2, 'Joaquín Campoy Cantero', 'jcampoy@rmbm.es', '6512e70c69916556b66a305b71953b48b3a887b48c28d9ae2b42ef4746de2475', 1);
