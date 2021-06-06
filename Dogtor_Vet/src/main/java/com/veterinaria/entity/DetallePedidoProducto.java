package com.veterinaria.entity;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table (name = "tb_detalle_pedido_producto")
public class DetallePedidoProducto {
	
	@EmbeddedId
	private DetallePedidoProductoPK objDetallePedidoProductoPK;
	
	@ManyToOne
	@JoinColumn(name = "codigo_pedido", nullable = false, insertable = false, updatable = false)
	private Pedido pedido;
	
	@ManyToOne
	@JoinColumn(name = "codigo_producto", nullable = false, insertable = false, updatable = false)
	private Producto producto;
	
	@Column(name = "cantidad_pedido")
	private Integer cantidad_pedido;
	
	@Column(name = "precio_pedido")
	private Double precio_pedido;

	public DetallePedidoProductoPK getObjDetallePedidoProductoPK() {
		return objDetallePedidoProductoPK;
	}

	public void setObjDetallePedidoProductoPK(DetallePedidoProductoPK objDetallePedidoProductoPK) {
		this.objDetallePedidoProductoPK = objDetallePedidoProductoPK;
	}

	public Pedido getPedido() {
		return pedido;
	}

	public void setPedido(Pedido pedido) {
		this.pedido = pedido;
	}

	public Producto getProducto() {
		return producto;
	}

	public void setProducto(Producto producto) {
		this.producto = producto;
	}

	public Integer getCantidad_pedido() {
		return cantidad_pedido;
	}

	public void setCantidad_pedido(Integer cantidad_pedido) {
		this.cantidad_pedido = cantidad_pedido;
	}

	public Double getPrecio_pedido() {
		return precio_pedido;
	}

	public void setPrecio_pedido(Double precio_pedido) {
		this.precio_pedido = precio_pedido;
	}
	
}
