package com.veterinaria.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class ProductoHasBoletaPK implements Serializable  {

	private static final long serialVersionUID = 1L;
	
	@Column(name = "codigo_boleta", unique = true, nullable = false, length = 10, insertable = true, updatable = false)
	private int codigo_boleta;
	
	@Column(name = "codigo_producto", unique = true, nullable = false, length = 10, insertable = true, updatable = false)
	private int codigo_producto;

	public int getCodigo_boleta() {
		return codigo_boleta;
	}

	public void setCodigo_boleta(int codigo_boleta) {
		this.codigo_boleta = codigo_boleta;
	}

	public int getCodigo_producto() {
		return codigo_producto;
	}

	public void setCodigo_producto(int codigo_producto) {
		this.codigo_producto = codigo_producto;
	}

	
	
	
	
}
