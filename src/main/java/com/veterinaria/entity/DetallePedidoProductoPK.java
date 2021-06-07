package com.veterinaria.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class DetallePedidoProductoPK implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Column(name = "codigo_pedido")
	private Integer codigo_pedido;
	
	@Column(name = "codigo_producto")
	private Integer codigo_producto;

	public Integer getCodigo_pedido() {
		return codigo_pedido;
	}

	public void setCodigo_pedido(Integer codigo_pedido) {
		this.codigo_pedido = codigo_pedido;
	}

	public Integer getCodigo_producto() {
		return codigo_producto;
	}

	public void setCodigo_producto(Integer codigo_producto) {
		this.codigo_producto = codigo_producto;
	}
	
}
