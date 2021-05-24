USE PI_DOGTOR;

INSERT INTO tb_visibilidad VALUES
(1, 'Visible'),
(2, 'Invisible');

INSERT INTO TB_DISTRITO VALUES
(1, 'Independencia'),
(2, 'Comas'),
(3, 'San Martín de Porres');

/* Especialista es médico, peluquero, etc */
INSERT INTO tb_rol_usuario VALUES
(1, 'Administrador'),
(2, 'Cliente'),
(3, 'Especialista'),
(4, 'Vendedor'),
(5, 'Repartidor');

INSERT INTO tb_usuario(CODIGO_USUARIO, EMAIL_USUARIO, CONTRASENA_USUARIO, NOMBRE_USUARIO,
APELLIDO_USUARIO, FECHA_NACIMIENTO_USUARIO, CODIGO_DISTRITO, CODIGO_VISIBILIDAD) VALUES
(1, 'admin@gmail.com', '123', 'Juan', 'Admin', '1997-03-25', 1, 1),
(2, 'cliente@gmail.com', '123', 'Luis', 'Cliente', '1997-03-25', 2, 1),
(3, 'especialista@gmail.com', '123', 'Marcos', 'Especialista', '1997-03-25', 3, 1),
(4, 'vendedor@gmail.com', '123', 'Mario', 'Vendedor', '1997-03-25', 1, 1),
(5, 'repartidor@gmail.com', '123', 'Francisco', 'Repartidor', '1997-03-25', 2, 1);

INSERT INTO TB_DETALLE_USUARIO_ROL VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

INSERT INTO tb_enlace VALUES
/* Administrador */
(1, 'Home', 'home', 'grid'),
(2, 'Usuario', 'verUsuario', 'users'),
(3, 'Producto', 'verProducto', 'archive'),
(4, 'Servicio', 'verServicio', 'zap'),
(5, 'Mascota', 'verMascota', 'github'),
/* Cliente */
(6, 'Home', 'home', 'grid'),
(7, 'Mascotas', 'verMisMascotas', 'github'),
(8, 'Citas', 'verMisCitas', 'calendar'),
(9, 'Pedidos', 'verMisPedidos', 'truck'),
(10, 'Tienda', 'verTienda', 'shopping-bag'),
(11, 'Servicios', 'verServicio', 'zap'),
/* Especialista */
(12, 'Home', 'home', 'grid'),
(13, 'Cita', 'verCita', 'calendar'),
/* Vendedor */
(14, 'Home', 'home', 'grid'),
(15, 'Venta', 'verVenta', 'dollar-sign'),
(16, 'Reserva', 'verReserva', 'book-open'),
/* Repartidor */
(17, 'Home', 'home', 'grid'),
(18, 'Pedido', 'verPedido', 'truck');

INSERT INTO tb_detalle_rol_enlace VALUES
(1, 1),(1, 2),(1, 3),(1, 4),(1, 5),
(2, 6),(2, 7),(2, 8),(2, 9),(2, 10),(2, 11),
(3, 12),(3, 13),
(4, 14),(4, 15),(4, 16),
(5, 17),(5,18);

INSERT INTO tb_color_mascota VALUES
(1, 'Blanco y Negro'),
(2, 'Blanco y Gris'),
(3, 'Blanco y Crema'),
(4, 'Blanco'),
(5, 'Negro'),
(6, 'Crema'),
(7, 'Crema, Blanco, y Negro');

INSERT INTO tb_especie_mascota VALUES
(1, 'Perro'),
(2, 'Gato'),
(3, 'Conejo'),
(4, 'Hámster');

INSERT INTO tb_sexo_mascota VALUES
(1, 'Hembra'), (2, 'Macho'), (3, 'Indeterminado');

INSERT INTO tb_raza_mascota VALUES
(1, 'Chihuahua', 1),(2, 'Pastor Alemán', 1),(3, 'Husky Siberiano', 1),
(4, 'Persa', 2),(5, 'Siamés', 2),(6, 'Sphynx', 2),
(7 ,'Californiano', 3),(8, 'Holandés', 3),(9, 'Arlequín', 3),
(10, 'Ruso', 4),(11, 'Sirio', 4),(12, 'Chino', 4);

INSERT INTO tb_marca VALUES
(1, 'Michicat'),
(2, 'Pulgout'),
(3, 'Funtoy');

INSERT INTO tb_categoria_producto VALUES
(1, 'Alimentos'),
(2 ,'Antipulgas'),
(3, 'Juguetes');

INSERT INTO tb_proveedor VALUES
(1, 'Pettoy S.A.C.'),
(2, 'Katsky S.A.C.'),
(3, 'RabbIT S.A.C.');

INSERT INTO tb_especialidad VALUES
(1, 'Cardiología'),
(2, 'Endocrinología'),
(3 ,'Fisioterapia'),
(4, 'Neurología'),
(5, 'Nutrición'),
(6, 'Odontología'),
(7, 'Oftalmología'),
(8, 'Oncología'),
(9, 'Traumatología');

INSERT INTO tb_dia_semana VALUES
(1 ,'Lunes'),
(2, 'Martes'),
(3, 'Miércoles'),
(4, 'Jueves'),
(5, 'Viernes'),
(6, 'Sábado'),
(7, 'Domingo');

INSERT INTO tb_tipo_servicio VALUES
(1, 'Consulta'),
(2, 'Aseo'),
(3, 'Laboratorio');

INSERT INTO tb_estado_cita VALUES
(1, 'Pendiente'),
(2, 'En curso'),
(3, 'Atendido'),
(4, 'Cancelado');

INSERT INTO tb_estado_pedido VALUES
(1, 'Recibido'),
(2, 'Confirmado'),
(3, 'En camino'),
(4, 'Entregado'),
(5, 'Cancelado');

INSERT INTO tb_tipo_boleta VALUES
(1, 'Boleta de Producto'),
(2, 'Boleta de Servicio');