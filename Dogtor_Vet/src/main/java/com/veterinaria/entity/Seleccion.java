package com.veterinaria.entity;

public class Seleccion {

	private int codigo_producto;
	private String nombre_producto;
	private double precio_producto;
	private int cantidad;
	private double totalParcial;
	
	public double getTotalParcial() {
		totalParcial = precio_producto * cantidad;
		return totalParcial;
	}

	public int getCodigo_producto() {
		return codigo_producto;
	}

	public void setCodigo_producto(int codigo_producto) {
		this.codigo_producto = codigo_producto;
	}

	public String getNombre_producto() {
		return nombre_producto;
	}

	public void setNombre_producto(String nombre_producto) {
		this.nombre_producto = nombre_producto;
	}

	public double getPrecio_producto() {
		return precio_producto;
	}

	public void setPrecio_producto(double precio_producto) {
		this.precio_producto = precio_producto;
	}

	public int getCantidad() {
		return cantidad;
	}

	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}

	public void setTotalParcial(double totalParcial) {
		this.totalParcial = totalParcial;
	}
	
	
	
}
