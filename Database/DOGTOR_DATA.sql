USE PI_DOGTOR;

INSERT INTO tb_visibilidad(NOMBRE_VISIBILIDAD) VALUES
('Visible'),('Invisible');

INSERT INTO TB_DISTRITO(NOMBRE_DISTRITO) VALUES
('Independencia'), ('Comas'), ('San Martín de Porres');

/* Especialista es médico, peluquero, etc */
INSERT INTO tb_rol_usuario(NOMBRE_ROL_USUARIO) VALUES 
('Administrador'),('Cliente'), ('Especialista'), ('Vendedor'), ('Repartidor');

INSERT INTO tb_usuario(CODIGO_USUARIO, EMAIL_USUARIO, CONTRASENA_USUARIO,
NOMBRE_USUARIO, APELLIDO_USUARIO, FECHA_NACIMIENTO_USUARIO, CODIGO_DISTRITO, CODIGO_VISIBILIDAD) VALUES 
(null, 'admin@gmail.com', '123', 'Usuario', 'Admin', '1997-03-25', 1, 1),
(null, 'cliente@gmail.com', '123', 'Usuario', 'Cliente', '1997-03-25', 1, 1);

INSERT INTO TB_DETALLE_USUARIO_ROL VALUES 
(1, 1), (2, 2);

INSERT INTO tb_enlace VALUES
(null, "Home", "homeAdministrador"),
(null, "Usuario", "verUsuario"),
(null, "Producto", "verProducto"),
(null, "Servicio", "verServicio"),
(null, "Mascota", "verMascota"),
(null, "Home", "homeCliente");

INSERT INTO tb_detalle_rol_enlace VALUES
(1, 1), (1, 2), (1, 3), (1, 4), (1,5), (2,6);

INSERT INTO tb_color_mascota(NOMBRE_COLOR_MASCOTA) VALUES 
("Blanco y Negro"),("Blanco y Gris"),
("Blanco y Crema"),("Blanco"),
("Negro"),("Crema"),
("Crema, Blanco, y Negro");

INSERT INTO tb_especie_mascota(NOMBRE_ESPECIE_MASCOTA) VALUES 
("Perro"), ("Gato"), ("Conejo"), ("Hámster");

INSERT INTO tb_sexo_mascota(NOMBRE_SEXO_MASCOTA) VALUES 
("Hembra"), ("Macho"), ("Indeterminado");

INSERT INTO tb_raza_mascota(NOMBRE_RAZA_MASCOTA, CODIGO_ESPECIE_MASCOTA) VALUES 
("Chihuahua", 1),("Pastor Alemán", 1),("Husky Siberiano", 1),
("Persa", 2),("Siamés", 2),("Sphynx", 2),("Californiano", 3),
("Holandés", 3),("Arlequín", 3),("Ruso", 4),("Sirio", 4),("Chino", 4);

INSERT INTO tb_marca(NOMBRE_MARCA) VALUES 
('Marca Random A'),('Marca Random B'), ('Marca Random C');

INSERT INTO tb_categoria_producto(NOMBRE_CATEGORIA_PRODUCTO) VALUES
('Alimentos enlatados'),('Antipulgas');

INSERT INTO tb_proveedor(NOMBRE_PROVEEDOR) VALUES
('Proveedor con nombre social súper largo A S.A.C.'),
('Proveedor con nombre social súper largo B S.A.C.'),
('Proveedor con nombre social súper largo C S.A.C.');

INSERT INTO TB_ESPECIALIDAD(NOMBRE_ESPECIALIDAD) VALUES 
('Cardiología'),('Endocrinología'),('Fisioterapia'),
('Neurología'),('Nutrición'),('Odontología'),
('Oftalmología'),('Oncología'),('Traumatología');

INSERT INTO TB_DIA_SEMANA(NOMBRE_DIA_SEMANA) VALUES
('Lunes'), ('Martes'), ('Miércoles'), ('Jueves'), ('Viernes'), ('Sábado'), ('Domingo');

INSERT INTO tb_tipo_servicio(NOMBRE_TIPO_SERVICIO) VALUES 
('Consulta Veterinaria'),('Aseo'),('Laboratorio');

INSERT INTO TB_ESTADO_CITA(NOMBRE_ESTADO_CITA) VALUES
('Pendiente'), ('En curso'), ('Atendida'), ('Cancelada');