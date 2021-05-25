package com.veterinaria.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity

@Table(name = "tb_tipo_boleta")
public class TipoBoleta {

	@Column(name = "codigo_tipo_boleta")
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer codigo_tipo_boleta;
	
	@Column (name = "nombre_tipo_boleta")
	private String nombre_tipo_boleta;

	
	public Integer getCodigo_tipo_boleta() {
		return codigo_tipo_boleta;
	}

	public void setCodigo_tipo_boleta(Integer codigo_tipo_boleta) {
		this.codigo_tipo_boleta = codigo_tipo_boleta;
	}

	public String getNombre_tipo_boleta() {
		return nombre_tipo_boleta;
	}

	public void setNombre_tipo_boleta(String nombre_tipo_boleta) {
		this.nombre_tipo_boleta = nombre_tipo_boleta;
	}
	
	
	
	
}
