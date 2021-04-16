package com.veterinaria.entity;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table (name = "tb_detalle_usuario_rol")
public class DetalleRolUsuario {
	
	@EmbeddedId
	private DetalleRolUsuarioPK idUsuarioRol;
	
	@ManyToOne
	@JoinColumn(name = "codigo_usuario", nullable = false, insertable = false, updatable = false)
	private Usuario usuario;
	
	@ManyToOne
	@JoinColumn(name = "codigo_rol_usuario", nullable = false, insertable = false, updatable = false)
	private Rol rol;
	
	public DetalleRolUsuarioPK getIdUsuarioRol() {
		return idUsuarioRol;
	}

	public void setIdUsuarioRol(DetalleRolUsuarioPK idUsuarioRol) {
		this.idUsuarioRol = idUsuarioRol;
	}

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

	public Rol getRol() {
		return rol;
	}

	public void setRol(Rol rol) {
		this.rol = rol;
	}
	
	

}
