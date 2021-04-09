CREATE DATABASE IF NOT EXISTS `PI_DOGTOR`;
USE `PI_DOGTOR`;

CREATE TABLE TB_DISTRITO (
	CODIGO_DISTRITO INT NOT NULL AUTO_INCREMENT,
    NOMBRE_DISTRITO VARCHAR(100) NOT NULL,
    PRIMARY KEY (CODIGO_DISTRITO)
);

CREATE TABLE TB_USUARIO (
	CODIGO_USUARIO INT NOT NULL AUTO_INCREMENT,
    EMAIL_USUARIO VARCHAR(255) NOT NULL UNIQUE,
    CONTRASENA_USUARIO VARCHAR(255) NOT NULL,
    NOMBRE_USUARIO VARCHAR(50) NOT NULL,
    APELLIDO_USUARIO VARCHAR(50) NOT NULL,
    FECHA_NACIMIENTO_USUARIO DATE NOT NULL,
    GENERO_USUARIO VARCHAR(50) DEFAULT NULL,
    DNI_USUARIO VARCHAR(8) DEFAULT NULL,
    DIRECCION_USUARIO VARCHAR(255) DEFAULT NULL,
    REFERENCIA_PEDIDO VARCHAR(100) DEFAULT NULL,
    TELEFONO_USUARIO VARCHAR(15) DEFAULT NULL,
    TOKEN_USUARIO VARCHAR(255) DEFAULT NULL,
	CODIGO_DISTRITO INT DEFAULT NULL, /* Verificar si se puede tener un FK NULL*/
    PRIMARY KEY (CODIGO_USUARIO),
    CONSTRAINT `TB_USUARIO_FK_TB_DISTRITO` FOREIGN KEY (CODIGO_DISTRITO) REFERENCES TB_DISTRITO (CODIGO_DISTRITO)
);

CREATE TABLE TB_ROL_USUARIO (
	CODIGO_ROL_USUARIO INT NOT NULL AUTO_INCREMENT,
    NOMBRE_ROL_USUARIO VARCHAR(50) NOT NULL,
    PRIMARY KEY (CODIGO_ROL_USUARIO)
);

CREATE TABLE TB_DETALLE_USUARIO_ROL (
	CODIGO_USUARIO INT NOT NULL,
    CODIGO_ROL_USUARIO INT NOT NULL,
    PRIMARY KEY (CODIGO_USUARIO, CODIGO_ROL_USUARIO),
    CONSTRAINT `TB_DETALLE_USUARIO_ROL_FK_TB_USUARIO` FOREIGN KEY (CODIGO_USUARIO) REFERENCES TB_USUARIO (CODIGO_USUARIO),
    CONSTRAINT `TB_DETALLE_USUARIO_ROL_FK_TB_ROL_USUARIO` FOREIGN KEY (CODIGO_ROL_USUARIO) REFERENCES TB_ROL_USUARIO (CODIGO_ROL_USUARIO)
);

CREATE TABLE TB_ENLACE (
	CODIGO_ENLACE INT AUTO_INCREMENT NOT NULL,
    DESCRIPCION_ENLACE VARCHAR(50) NOT NULL,
    RUTA_ENLACE VARCHAR(255) NOT NULL,
    PRIMARY KEY (CODIGO_ENLACE)
);

CREATE TABLE TB_DETALLE_ROL_ENLACE (
	CODIGO_ROL_USUARIO INT NOT NULL,
    CODIGO_ENLACE INT NOT NULL,
    PRIMARY KEY (CODIGO_ROL_USUARIO, CODIGO_ENLACE),
    CONSTRAINT `TB_DETALLE_ROL_ENLACE_FK_TB_ROL` FOREIGN KEY (CODIGO_ROL_USUARIO) REFERENCES TB_ROL_USUARIO (CODIGO_ROL_USUARIO),
    CONSTRAINT `TB_DETALLE_ROL_ENLACE_FK_TB_ENLACE` FOREIGN KEY (CODIGO_ENLACE) REFERENCES TB_ENLACE (CODIGO_ENLACE)
);

CREATE TABLE TB_ESPECIE_MASCOTA (
	CODIGO_ESPECIE_MASCOTA INT AUTO_INCREMENT NOT NULL,
    NOMBRE_ESPECIE_MASCOTA VARCHAR(100),
    PRIMARY KEY (CODIGO_ESPECIE_MASCOTA)
);

CREATE TABLE TB_RAZA_MASCOTA (
	CODIGO_RAZA_MASCOTA INT AUTO_INCREMENT NOT NULL,
    NOMBRE_RAZA_MASCOTA VARCHAR(100),
    CODIGO_ESPECIE_MASCOTA INT NOT NULL,
    PRIMARY KEY (CODIGO_RAZA_MASCOTA),
    CONSTRAINT `TB_RAZA_MASCOTA_FK_TB_ESPECIE_MASCOTA` FOREIGN KEY (CODIGO_ESPECIE_MASCOTA) REFERENCES TB_ESPECIE_MASCOTA (CODIGO_ESPECIE_MASCOTA)
);

CREATE TABLE TB_SEXO_MASCOTA (
	CODIGO_SEXO_MASCOTA INT AUTO_INCREMENT NOT NULL,
    NOMBRE_SEXO_MASCOTA VARCHAR(100),
    PRIMARY KEY (CODIGO_SEXO_MASCOTA)
);

CREATE TABLE TB_COLOR_MASCOTA (
	CODIGO_COLOR_MASCOTA INT AUTO_INCREMENT NOT NULL,
    NOMBRE_COLOR_MASCOTA VARCHAR(100),
    PRIMARY KEY (CODIGO_COLOR_MASCOTA)
);

CREATE TABLE TB_MASCOTA (
	CODIGO_MASCOTA INT AUTO_INCREMENT NOT NULL,
    CODIGO_PROPIETARIO INT NOT NULL,
    NOMBRE_MASCOTA VARCHAR(100),
    FOTO_MASCOTA TEXT DEFAULT NULL,
    CODIGO_RAZA_MASCOTA INT NOT NULL,
    CODIGO_SEXO_MASCOTA INT NOT NULL,
    CODIGO_ESPECIE_MASCOTA INT NOT NULL,
    CODIGO_COLOR_MASCOTA INT NOT NULL,
    FECHA_NACIMIENTO_MASCOTA DATE DEFAULT NULL,
    CODIGO_IDENTIFICACION_MASCOTA VARCHAR(50) DEFAULT NULL,
    CODIGO_CARTILLA_SANITARIA VARCHAR(50) DEFAULT NULL,
    PRIMARY KEY (CODIGO_MASCOTA),
    CONSTRAINT `TB_MASCOTA_FK_TB_USUARIO` FOREIGN KEY (CODIGO_PROPIETARIO) REFERENCES TB_USUARIO (CODIGO_USUARIO),
    CONSTRAINT `TB_MASCOTA_FK_TB_RAZA_MASCOTA` FOREIGN KEY (CODIGO_RAZA_MASCOTA) REFERENCES TB_RAZA_MASCOTA (CODIGO_RAZA_MASCOTA),
    CONSTRAINT `TB_MASCOTA_FK_TB_SEXO_MASCOTA` FOREIGN KEY (CODIGO_SEXO_MASCOTA) REFERENCES TB_SEXO_MASCOTA (CODIGO_SEXO_MASCOTA),
    CONSTRAINT `TB_MASCOTA_FK_TB_ESPECIE_MASCOTA` FOREIGN KEY (CODIGO_ESPECIE_MASCOTA) REFERENCES TB_ESPECIE_MASCOTA (CODIGO_ESPECIE_MASCOTA),
    CONSTRAINT `TB_MASCOTA_FK_TB_COLOR_MASCOTA` FOREIGN KEY (CODIGO_COLOR_MASCOTA) REFERENCES TB_COLOR_MASCOTA (CODIGO_COLOR_MASCOTA)
);

CREATE TABLE TB_TIPO_SERVICIO (
	CODIGO_TIPO_SERVICIO INT AUTO_INCREMENT NOT NULL,
    NOMBRE_TIPO_SERVICIO VARCHAR(50) NOT NULL,
    PRIMARY KEY (CODIGO_TIPO_SERVICIO)
);

CREATE TABLE TB_SERVICIO (
	CODIGO_SERVICIO INT NOT NULL AUTO_INCREMENT,
    NOMBRE_SERVICIO VARCHAR(255) NOT NULL,
    DESCRIPCION_SERVICIO TEXT NOT NULL,
    PRECIO_SERVICIO DOUBLE NOT NULL,
    HORARIO_SERVICIO VARCHAR(50) NOT NULL,
    FECHAS_SERVICIO TEXT DEFAULT NULL, /* Definir qué son fechas de servicio */
    CODIGO_TIPO_SERVICIO INT NOT NULL,
    LIMITE_CITAS_SERVICIO INT NOT NULL, /* límite diario de citas programadas por fecha */ 
    CONSTRAINT `TB_SERVICIO_FK_TB_TIPO_SERVICIO` FOREIGN KEY (CODIGO_TIPO_SERVICIO) REFERENCES TB_TIPO_SERVICIO (CODIGO_TIPO_SERVICIO),
    PRIMARY KEY (CODIGO_SERVICIO)
);

CREATE TABLE TB_ESTADO_CITA (
	CODIGO_ESTADO_CITA INT AUTO_INCREMENT NOT NULL,
    NOMBRE_ESTADO_CITA VARCHAR(50) NOT NULL,
    PRIMARY KEY (CODIGO_ESTADO_CITA)
);

CREATE TABLE TB_ESPECIALIDAD_CITA (
	CODIGO_ESPECIALIDAD_CITA INT AUTO_INCREMENT NOT NULL,
    NOMBRE_ESPECIALIDAD_CITA VARCHAR(50) NOT NULL,
    PRIMARY KEY (CODIGO_ESPECIALIDAD_CITA)
);

CREATE TABLE TB_CITA (
	CODIGO_CITA INT AUTO_INCREMENT NOT NULL,
    FECHA_SOLICITUD_CITA DATE NOT NULL, /* Cuándo se genera la cita */ 
    FECHA_PROXIMA_CITA DATE NOT NULL, /* Para cuándo */
    DURACION_CITA VARCHAR(50) NOT NULL, /* Cantidad de horas o minutos*/
    HORA_INICIO_CITA VARCHAR(50) NOT NULL,
    HORA_FIN_CITA VARCHAR(50) NOT NULL,
    CODIGO_PROPIETARIO INT NOT NULL,
    CODIGO_MASCOTA INT NOT NULL,
    CODIGO_SERVICIO INT NOT NULL,
    CODIGO_ESPECIALIDAD_CITA INT NOT NULL,
    CODIGO_ESPECIALISTA INT NOT NULL,
	CODIGO_ESTADO_CITA INT NOT NULL,
    CONSTRAINT `TB_CITA_FK_TB_USUARIO_PROPIETARIO` FOREIGN KEY (CODIGO_PROPIETARIO) REFERENCES TB_USUARIO (CODIGO_USUARIO),
	CONSTRAINT `TB_CITA_FK_TB_MASCOTA` FOREIGN KEY (CODIGO_MASCOTA) REFERENCES TB_MASCOTA (CODIGO_MASCOTA),
	CONSTRAINT `TB_CITA_FK_TB_SERVICIO` FOREIGN KEY (CODIGO_SERVICIO) REFERENCES TB_SERVICIO (CODIGO_SERVICIO),
    CONSTRAINT `TB_CITA_FK_TB_ESPECIALIDAD_CITA` FOREIGN KEY (CODIGO_ESPECIALIDAD_CITA) REFERENCES TB_ESPECIALIDAD_CITA (CODIGO_ESPECIALIDAD_CITA),
    CONSTRAINT `TB_CITA_FK_TB_USUARIO_ESPECIALISTA` FOREIGN KEY (CODIGO_ESPECIALISTA) REFERENCES TB_USUARIO (CODIGO_USUARIO),
	CONSTRAINT `TB_CITA_FK_TB_ESTADO_CITA` FOREIGN KEY (CODIGO_ESTADO_CITA) REFERENCES TB_ESTADO_CITA (CODIGO_ESTADO_CITA),
	PRIMARY KEY (CODIGO_CITA)
);

CREATE TABLE TB_HISTORIAL_CLINICO (
	CODIGO_HISTORIAL_CLINICO INT AUTO_INCREMENT NOT NULL,
    CODIGO_MASCOTA INT NOT NULL,
	CODIGO_MEDICO INT NOT NULL,
    FECHA_HISTORIAL_CLINICO DATE NOT NULL,
    MOTIVO_HISTORIAL_CLINICO VARCHAR(255) NOT NULL,
    PRIMARY KEY (CODIGO_HISTORIAL_CLINICO),
    CONSTRAINT `TB_HISTORIAL_CLINICO_FK_TB_MASCOTA` FOREIGN KEY (CODIGO_MASCOTA) REFERENCES TB_MASCOTA (CODIGO_MASCOTA),
    CONSTRAINT `TB_HISTORIAL_CLINICO_FK_TB_MEDICO` FOREIGN KEY (CODIGO_MEDICO) REFERENCES TB_USUARIO (CODIGO_USUARIO)
);

CREATE TABLE TB_VACUNA (
	CODIGO_VACUNA INT AUTO_INCREMENT NOT NULL,
    NOMBRE_VACUNA VARCHAR(100) NOT NULL,
    FECHA_VACUNA DATE NOT NULL,
    PRIMARY KEY (CODIGO_VACUNA)
);

CREATE TABLE TB_DETALLE_HISTORIAL_CLINICO_VACUNA (
	CODIGO_HISTORIAL_CLINICO INT NOT NULL,
    CODIGO_VACUNA INT NOT NULL,
    PRIMARY KEY (CODIGO_HISTORIAL_CLINICO, CODIGO_VACUNA),
    CONSTRAINT `TB_DETALLE_HISTORIAL_CLINICO_VACUNA_FK_TB_HISTORIAL_CLINICO` FOREIGN KEY (CODIGO_HISTORIAL_CLINICO) REFERENCES TB_HISTORIAL_CLINICO (CODIGO_HISTORIAL_CLINICO),
    CONSTRAINT `TB_DETALLE_HISTORIAL_CLINICO_VACUNA_FK_TB_VACUNA` FOREIGN KEY (CODIGO_VACUNA) REFERENCES TB_VACUNA (CODIGO_VACUNA)
);

CREATE TABLE TB_MARCA (
	CODIGO_MARCA INT NOT NULL AUTO_INCREMENT,
    NOMBRE_MARCA VARCHAR(255) NOT NULL,
    PRIMARY KEY (CODIGO_MARCA)
);

CREATE TABLE TB_PROVEEDOR (
	CODIGO_PROVEEDOR INT NOT NULL AUTO_INCREMENT,
    NOMBRE_PROVEEDOR VARCHAR(255) NOT NULL,
    PRIMARY KEY (CODIGO_PROVEEDOR)
);

CREATE TABLE TB_CATEGORIA_PRODUCTO (
	CODIGO_CATEGORIA_PRODUCTO INT NOT NULL AUTO_INCREMENT,
    NOMBRE_CATEGORIA_PRODUCTO VARCHAR(255) NOT NULL,
    PRIMARY KEY (CODIGO_CATEGORIA_PRODUCTO)
);

CREATE TABLE TB_PRODUCTO (
	CODIGO_PRODUCTO INT NOT NULL AUTO_INCREMENT,
    NOMBRE_PRODUCTO VARCHAR(255) NOT NULL,
    DESCRIPCION_SIMPLE_PRODUCTO TEXT NOT NULL,
    DESCRIPCION_HTML_PRODUCTO TEXT DEFAULT NULL,
    PRECIO_PRODUCTO DOUBLE NOT NULL,
    STOCK_PRODUCTO INT NOT NULL, /* UNIDADES EN EXISTENCIA */
    PEDIDO_PRODUCTO INT NOT NULL, /* UNIDADES EN PEDIDO - CONTROL DE STOCK VS PEDIDOS*/
    SERIE_PRODUCTO VARCHAR(50) NOT NULL,
    FOTO1_PRODUCTO TEXT NOT NULL,
    FOTO2_PRODUCTO TEXT DEFAULT NULL,
    FOTO3_PRODUCTO TEXT DEFAULT NULL,
    CODIGO_MARCA INT NOT NULL,
    CODIGO_CATEGORIA_PRODUCTO INT NOT NULL,
    CODIGO_PROVEEDOR INT NOT NULL,
    PRIMARY KEY (CODIGO_PRODUCTO),
    CONSTRAINT `TB_PRODUCTO_FK_TB_MARCA` FOREIGN KEY (CODIGO_MARCA) REFERENCES TB_MARCA (CODIGO_MARCA),
    CONSTRAINT `TB_PRODUCTO_FK_TB_CATEGORIA_PRODUCTO` FOREIGN KEY (CODIGO_CATEGORIA_PRODUCTO) REFERENCES TB_CATEGORIA_PRODUCTO (CODIGO_CATEGORIA_PRODUCTO),
    CONSTRAINT `TB_PRODUCTO_FK_TB_PROVEEDOR` FOREIGN KEY (CODIGO_PROVEEDOR) REFERENCES TB_PROVEEDOR (CODIGO_PROVEEDOR)
);

CREATE TABLE TB_PEDIDO (
	CODIGO_PEDIDO INT NOT NULL AUTO_INCREMENT,
    CODIGO_CLIENTE INT NOT NULL,
    FECHA_SOLICITUD_PEDIDO DATE NOT NULL,
    FECHA_ENTREGA_PEDIDO DATE NOT NULL,
    MONTO_PEDIDO DOUBLE NOT NULL,
    CODIGO_VENDEDOR INT NOT NULL,
    PRIMARY KEY (CODIGO_PEDIDO),
    CONSTRAINT `TB_PEDIDO_FK_TB_USUARIO_CLIENTE` FOREIGN KEY (CODIGO_CLIENTE) REFERENCES TB_USUARIO (CODIGO_USUARIO),
    CONSTRAINT `TB_PEDIDO_FK_TB_USUARIO_VENDEDOR` FOREIGN KEY (CODIGO_VENDEDOR) REFERENCES TB_USUARIO (CODIGO_USUARIO)
);

CREATE TABLE TB_DETALLE_PEDIDO_PRODUCTO (
	CODIGO_PEDIDO INT NOT NULL,
    CODIGO_PRODUCTO INT NOT NULL,
    CANTIDAD_DETALLE INT NOT NULL,
    PRECIO_DETALLE DOUBLE NOT NULL,
    PRIMARY KEY (CODIGO_PEDIDO, CODIGO_PRODUCTO),
    CONSTRAINT `TB_DETALLE_PEDIDO_PRODUCTO_FK_TB_PEDIDO` FOREIGN KEY (CODIGO_PEDIDO) REFERENCES TB_PEDIDO (CODIGO_PEDIDO),
    CONSTRAINT `TB_DETALLE_PEDIDO_PRODUCTO_FK_TB_PRODUCTO` FOREIGN KEY (CODIGO_PRODUCTO) REFERENCES TB_PRODUCTO (CODIGO_PRODUCTO)
);
