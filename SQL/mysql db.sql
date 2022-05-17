DROP TABLE IF EXISTS libros;

CREATE TABLE libros(
	id int primary key not null AUTO_INCREMENT,
	titulo varchar(100),
	autor varchar(100),
	titulo_alternativo varchar(100),
	fecha_publicacion date not null
);

INSERT INTO libros (titulo, autor, titulo_alternativo, fecha_publicacion) VALUES 
('Harry Potter y la Piedra Filosofal', 'J.K. Rowling', 'Harry Potter y la Piedra del Hechicero', '1997-06-26'), 
('Harry Potter y la Cámara de los Secretos', 'J.K. Rowling', NULL, '1998-07-02'), 
('El ojo del mundo', 'Robert Jordan', NULL, '1990-01-15');

DROP TABLE IF EXISTS usuarios;

CREATE TABLE usuarios(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	nombre VARCHAR(100) NOT NULL,
	paterno VARCHAR(50) NOT NULL,
	materno VARCHAR(50),
	fecha_nacimiento DATE NOT NULL,
	recargos DECIMAL(10, 2) DEFAULT 0
);

INSERT INTO usuarios (nombre, paterno, materno, fecha_nacimiento, recargos) VALUES 
('Miguel', 'Juárez', 'Carrillo', '1990-01-01', 0), 
('Pedro', 'Páramo', NULL, '1945-08-26', 0),
('Juan', 'Pérez', NULL, '2000-01-01', 0);

DROP TABLE IF EXISTS prestamos;

CREATE TABLE prestamos(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	usuario_id INT NOT NULL,
	libro_id INT NOT NULL,
	fecha_prestamo DATE NOT NULL
);

INSERT INTO prestamos (usuario_id, libro_id, fecha_prestamo) VALUES 
(1, 2, '2022-01-01'), 
(1, 3, '2022-01-01'), 
(2, 2, '2022-01-02');