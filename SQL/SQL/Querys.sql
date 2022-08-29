select * from dbo.libros  order by fecha_publicacion desc

select nombre, paterno, materno, titulo, autor, fecha_prestamo from usuarios, libros, prestamos where prestamos.usuario_id = usuarios.id and libros.id = prestamos.libro_id