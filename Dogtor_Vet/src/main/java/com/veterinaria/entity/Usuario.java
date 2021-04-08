package com.veterinaria.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "tb_usuario")
public class Usuario {
	
	@Column(name = "codigo_usuario")
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int codigoUsuario;
	
	@Column(name = "email_usuario")
	private String email_usuario;
	
	@Column(name = "contrasena_usuario")
	private String contrasena_usuario;
	
	@Column(name = "nombre_usuario")
	private String nombre_usuario;
	
	@Column(name = "apellido_usuario")
	private String apellido_usuario;
	
	@Column(name = "fecha_nacimiento_usuario")
	private String fecha_nacimiento_usuario;
	
	@Column(name = "genero_usuario")
	private String genero_usuario;
	
	@Column(name = "dni_usuario")
	private String dni_usuario;
	
	@Column(name = "direccion_usuario")
	private String direccion_usuario;
	
	@Column(name = "referencia_pedido")
	private String referencia_pedido;
	
	@Column(name = "telefono_usuario")
	private String telefono_usuario;
	
	@Column(name = "codigo_distrito")
	private String codigo_distrito;

	public int getCodigoUsuario() {
		return codigoUsuario;
	}

	public void setCodigoUsuario(int codigoUsuario) {
		this.codigoUsuario = codigoUsuario;
	}

	public String getEmail_usuario() {
		return email_usuario;
	}

	public void setEmail_usuario(String email_usuario) {
		this.email_usuario = email_usuario;
	}

	public String getContrasena_usuario() {
		return contrasena_usuario;
	}

	public void setContrasena_usuario(String contrasena_usuario) {
		this.contrasena_usuario = contrasena_usuario;
	}

	public String getNombre_usuario() {
		return nombre_usuario;
	}

	public void setNombre_usuario(String nombre_usuario) {
		this.nombre_usuario = nombre_usuario;
	}

	public String getApellido_usuario() {
		return apellido_usuario;
	}

	public void setApellido_usuario(String apellido_usuario) {
		this.apellido_usuario = apellido_usuario;
	}

	public String getFecha_nacimiento_usuario() {
		return fecha_nacimiento_usuario;
	}

	public void setFecha_nacimiento_usuario(String fecha_nacimiento_usuario) {
		this.fecha_nacimiento_usuario = fecha_nacimiento_usuario;
	}

	public String getGenero_usuario() {
		return genero_usuario;
	}

	public void setGenero_usuario(String genero_usuario) {
		this.genero_usuario = genero_usuario;
	}

	public String getDni_usuario() {
		return dni_usuario;
	}

	public void setDni_usuario(String dni_usuario) {
		this.dni_usuario = dni_usuario;
	}

	public String getDireccion_usuario() {
		return direccion_usuario;
	}

	public void setDireccion_usuario(String direccion_usuario) {
		this.direccion_usuario = direccion_usuario;
	}

	public String getReferencia_pedido() {
		return referencia_pedido;
	}

	public void setReferencia_pedido(String referencia_pedido) {
		this.referencia_pedido = referencia_pedido;
	}

	public String getTelefono_usuario() {
		return telefono_usuario;
	}

	public void setTelefono_usuario(String telefono_usuario) {
		this.telefono_usuario = telefono_usuario;
	}

	public String getCodigo_distrito() {
		return codigo_distrito;
	}

	public void setCodigo_distrito(String codigo_distrito) {
		this.codigo_distrito = codigo_distrito;
	}
	
}
