package com.veterinaria.entity;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table (name = "tb_detalle_usuario_rol")
public class UsuarioHasRol {
	
	@EmbeddedId
	private UsuarioHasRolPK idUsuarioRol;

	public UsuarioHasRolPK getIdUsuarioRol() {
		return idUsuarioRol;
	}

	public void setIdUsuarioRol(UsuarioHasRolPK idUsuarioRol) {
		this.idUsuarioRol = idUsuarioRol;
	}

}
