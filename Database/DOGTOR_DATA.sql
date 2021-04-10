USE PI_DOGTOR;

INSERT INTO tb_rol_usuario(NOMBRE_ROL_USUARIO) VALUES ('Administrador');
INSERT INTO tb_rol_usuario(NOMBRE_ROL_USUARIO) VALUES ('Usuario');
INSERT INTO tb_rol_usuario(NOMBRE_ROL_USUARIO) VALUES ('Especialista'); /* Médico veterinario, peluquero, etc*/
INSERT INTO tb_rol_usuario(NOMBRE_ROL_USUARIO) VALUES ('Vendedor');
INSERT INTO tb_rol_usuario(NOMBRE_ROL_USUARIO) VALUES ('Repartidor');

INSERT INTO tb_usuario(CODIGO_USUARIO, EMAIL_USUARIO, CONTRASENA_USUARIO, NOMBRE_USUARIO, APELLIDO_USUARIO, FECHA_NACIMIENTO_USUARIO) 
VALUES (null, 'mitrodle@gmail.com', '123', 'Mitchell', 'Admin', '1997-03-25');
INSERT INTO tb_usuario(CODIGO_USUARIO, EMAIL_USUARIO, CONTRASENA_USUARIO, NOMBRE_USUARIO, APELLIDO_USUARIO, FECHA_NACIMIENTO_USUARIO) 
VALUES (null, 'mishrole@gmail.com', '123', 'Mitchell', 'Usuario', '1997-03-25');

INSERT INTO TB_DETALLE_USUARIO_ROL VALUES (1, 1);
INSERT INTO TB_DETALLE_USUARIO_ROL VALUES (2, 2);

INSERT INTO tb_color_mascota(NOMBRE_COLOR_MASCOTA) VALUES ("Blanco y Negro");
INSERT INTO tb_color_mascota(NOMBRE_COLOR_MASCOTA) VALUES ("Blanco y Gris");
INSERT INTO tb_color_mascota(NOMBRE_COLOR_MASCOTA) VALUES ("Blanco y Crema");
INSERT INTO tb_color_mascota(NOMBRE_COLOR_MASCOTA) VALUES ("Blanco");
INSERT INTO tb_color_mascota(NOMBRE_COLOR_MASCOTA) VALUES ("Negro");
INSERT INTO tb_color_mascota(NOMBRE_COLOR_MASCOTA) VALUES ("Crema");
INSERT INTO tb_color_mascota(NOMBRE_COLOR_MASCOTA) VALUES ("Crema, Blanco, y Negro");

INSERT INTO tb_especie_mascota(NOMBRE_ESPECIE_MASCOTA) VALUES ("Perro");
INSERT INTO tb_especie_mascota(NOMBRE_ESPECIE_MASCOTA) VALUES ("Gato");
INSERT INTO tb_especie_mascota(NOMBRE_ESPECIE_MASCOTA) VALUES ("Conejo");
INSERT INTO tb_especie_mascota(NOMBRE_ESPECIE_MASCOTA) VALUES ("Hámster");

INSERT INTO tb_sexo_mascota(NOMBRE_SEXO_MASCOTA) VALUES ("Hembra");
INSERT INTO tb_sexo_mascota(NOMBRE_SEXO_MASCOTA) VALUES ("Macho");
INSERT INTO tb_sexo_mascota(NOMBRE_SEXO_MASCOTA) VALUES ("Indeterminado");

INSERT INTO tb_raza_mascota(NOMBRE_RAZA_MASCOTA, CODIGO_ESPECIE_MASCOTA) VALUES ("Chihuahua", 1);
INSERT INTO tb_raza_mascota(NOMBRE_RAZA_MASCOTA, CODIGO_ESPECIE_MASCOTA) VALUES ("Pastor Alemán", 1);
INSERT INTO tb_raza_mascota(NOMBRE_RAZA_MASCOTA, CODIGO_ESPECIE_MASCOTA) VALUES ("Husky Siberiano", 1);
INSERT INTO tb_raza_mascota(NOMBRE_RAZA_MASCOTA, CODIGO_ESPECIE_MASCOTA) VALUES ("Persa", 2);
INSERT INTO tb_raza_mascota(NOMBRE_RAZA_MASCOTA, CODIGO_ESPECIE_MASCOTA) VALUES ("Siamés", 2);
INSERT INTO tb_raza_mascota(NOMBRE_RAZA_MASCOTA, CODIGO_ESPECIE_MASCOTA) VALUES ("Sphynx", 2);
INSERT INTO tb_raza_mascota(NOMBRE_RAZA_MASCOTA, CODIGO_ESPECIE_MASCOTA) VALUES ("Californiano", 3);
INSERT INTO tb_raza_mascota(NOMBRE_RAZA_MASCOTA, CODIGO_ESPECIE_MASCOTA) VALUES ("Holandés", 3);
INSERT INTO tb_raza_mascota(NOMBRE_RAZA_MASCOTA, CODIGO_ESPECIE_MASCOTA) VALUES ("Arlequín", 3);
INSERT INTO tb_raza_mascota(NOMBRE_RAZA_MASCOTA, CODIGO_ESPECIE_MASCOTA) VALUES ("Ruso", 4);
INSERT INTO tb_raza_mascota(NOMBRE_RAZA_MASCOTA, CODIGO_ESPECIE_MASCOTA) VALUES ("Sirio", 4);
INSERT INTO tb_raza_mascota(NOMBRE_RAZA_MASCOTA, CODIGO_ESPECIE_MASCOTA) VALUES ("Chino", 4);

INSERT INTO tb_marca(NOMBRE_MARCA) VALUES ('Marca Random A');
INSERT INTO tb_marca(NOMBRE_MARCA) VALUES ('Marca Random B');
INSERT INTO tb_marca(NOMBRE_MARCA) VALUES ('Marca Random C');

INSERT INTO tb_categoria_producto(NOMBRE_CATEGORIA_PRODUCTO) VALUES('Alimentos enlatados');
INSERT INTO tb_categoria_producto(NOMBRE_CATEGORIA_PRODUCTO) VALUES('Antipulgas');

INSERT INTO tb_proveedor(NOMBRE_PROVEEDOR) VALUES('Proveedor con nombre social súper largo A S.A.C.');
INSERT INTO tb_proveedor(NOMBRE_PROVEEDOR) VALUES('Proveedor con nombre social súper largo B S.A.C.');
INSERT INTO tb_proveedor(NOMBRE_PROVEEDOR) VALUES('Proveedor con nombre social súper largo C S.A.C.');