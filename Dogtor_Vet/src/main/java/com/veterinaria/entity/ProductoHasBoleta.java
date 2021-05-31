package com.veterinaria.entity;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;



@Entity
@Table(name = "tb_producto_has_boleta")
public class ProductoHasBoleta {

	@EmbeddedId
	private ProductoHasBoletaPK productoHasBoletaPK;
	
	@Column(precision = 22)
	private double precio;

	@Column(length = 10)
	private int cantidad;
	

	@ManyToOne
	@JoinColumn(name = "codigo_boleta", nullable = false, insertable = false, updatable = false)
	private Boleta codigo_boleta;

	@ManyToOne
	@JoinColumn(name = "codigo_producto", nullable = false, insertable = false, updatable = false)
	private Producto codigo_producto;

	public ProductoHasBoletaPK getProductoHasBoletaPK() {
		return productoHasBoletaPK;
	}

	public void setProductoHasBoletaPK(ProductoHasBoletaPK productoHasBoletaPK) {
		this.productoHasBoletaPK = productoHasBoletaPK;
	}

	public double getPrecio() {
		return precio;
	}

	public void setPrecio(double precio) {
		this.precio = precio;
	}

	public int getCantidad() {
		return cantidad;
	}

	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}

	public Boleta getCodigo_boleta() {
		return codigo_boleta;
	}

	public void setCodigo_boleta(Boleta codigo_boleta) {
		this.codigo_boleta = codigo_boleta;
	}

	public Producto getCodigo_producto() {
		return codigo_producto;
	}

	public void setCodigo_producto(Producto codigo_producto) {
		this.codigo_producto = codigo_producto;
	}

	


	
}
