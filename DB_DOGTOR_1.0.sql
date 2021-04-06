CREATE DATABASE IF NOT EXISTS `PI_DOGTOR`;
USE `PI_DOGTOR`;

CREATE TABLE TB_USUARIO (
	CODIGO_USUARIO INT NOT NULL AUTO_INCREMENT,
    EMAIL_USUARIO VARCHAR(255) NOT NULL UNIQUE,
    CONTRASENA_USUARIO VARCHAR(255) NOT NULL,
    NOMBRE_USUARIO VARCHAR(50) NOT NULL,
    APELLIDO_USUARIO VARCHAR(50) NOT NULL,
    DNI_USUARIO VARCHAR(8) DEFAULT NULL,
    PRIMARY KEY (CODIGO_USUARIO)
);

CREATE TABLE TB_ROL_USUARIO (
	CODIGO_ROL_USUARIO INT NOT NULL AUTO_INCREMENT,
    NOMBRE_ROL_USUARIO VARCHAR(50) NOT NULL,
    PRIMARY KEY (CODIGO_ROL_USUARIO)
);

CREATE TABLE TB_DETALLE_USUARIO_ROL (
	CODIGO_USUARIO INT NOT NULL,
    CODIGO_ROL INT NOT NULL,
    PRIMARY KEY (CODIGO_USUARIO, CODIGO_ROL),
    CONSTRAINT `TB_DETALLE_USUARIO_ROL_FK_TB_USUARIO` FOREIGN KEY (CODIGO_USUARIO) REFERENCES TB_USUARIO (CODIGO_USUARIO),
    CONSTRAINT `TB_DETALLE_USUARIO_ROL_FK_TB_ROL` FOREIGN KEY (CODIGO_ROL) REFERENCES TB_ROL (CODIGO_ROL)
);

CREATE TABLE TB_ENLACE (
	CODIGO_ENLACE INT AUTO_INCREMENT NOT NULL,
    DESCRIPCION_ENLACE VARCHAR(50) NOT NULL,
    RUTA_ENLACE VARCHAR(255) NOT NULL,
    PRIMARY KEY (CODIGO_ENLACE)
);

CREATE TABLE TB_DETALLE_ROL_ENLACE (
	CODIGO_ROL INT NOT NULL,
    CODIGO_ENLACE INT NOT NULL,
    PRIMARY KEY (CODIGO_ROL, CODIGO_ENLACE),
    CONSTRAINT `TB_DETALLE_ROL_ENLACE_FK_TB_ROL` FOREIGN KEY (CODIGO_ROL) REFERENCES TB_ROL (CODIGO_ROL),
    CONSTRAINT `TB_DETALLE_ROL_ENLACE_FK_TB_ENLACE` FOREIGN KEY (CODIGO_ENLACE) REFERENCES TB_ENLACE (CODIGO_ENLACE)
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
    STOCK_PRODUCTO INT NOT NULL,
    SERIE_PRODUCTO VARCHAR(50) NOT NULL,
    FOTO1_PRODUCTO TEXT NOT NULL,
    FOTO2_PRODUCTO TEXT DEFAULT NULL,
    FOTO3_PRODUCTO TEXT DEFAULT NULL,
    CODIGO_MARCA INT NOT NULL,
    CODIGO_CATEGORIA INT NOT NULL,
    CODIGO_PROVEEDOR INT NOT NULL,
    PRIMARY KEY (CODIGO_PRODUCTO),
    CONSTRAINT `TB_PRODUCTO_FK_TB_MARCA` FOREIGN KEY (CODIGO_MARCA) REFERENCES TB_MARCA (CODIGO_MARCA),
    CONSTRAINT `TB_PRODUCTO_FK_TB_CATEGORIA_PRODUCTO` FOREIGN KEY (CODIGO_CATEGORIA_PRODUCTO) REFERENCES TB_CATEGORIA_PRODUCTO (CODIGO_CATEGORIA_PRODUCTO),
    CONSTRAINT `TB_PRODUCTO_FK_TB_PROVEEDOR` FOREIGN KEY (CODIGO_PROVEEDOR) REFERENCES TB_PROVEEDOR (CODIGO_PROVEEDOR)
);

CREATE TABLE TB_SERVICIO (
	CODIGO_SERVICIO INT NOT NULL AUTO_INCREMENT,
    NOMBRE_SERVICIO VARCHAR(255) NOT NULL,
    DESCRIPCION_SERVICIO TEXT NOT NULL,
    PRECIO_SERVICIO DOUBLE NOT NULL,
    HORARIO_SERVICIO TEXT NOT NULL,
    FECHAS_SERVICIO TEXT DEFAULT NULL,
    LIMITE_CITAS_SERVICIO INT NOT NULL,
    PRIMARY KEY (CODIGO_SERVICIO)
);

