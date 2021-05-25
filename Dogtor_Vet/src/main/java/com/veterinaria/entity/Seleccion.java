package com.veterinaria.entity;

public class Seleccion {

	private int codigo_producto;
	private String nombre;
	private double precio;
	private int cantidad;
	private double totalParcial;
	
	public double getTotalParcial() {
		totalParcial = precio * cantidad;
		return totalParcial;
	}
	
	public int getCodigo_producto() {
		return codigo_producto;
	}

	public void setCodigo_producto(int codigo_producto) {
		this.codigo_producto = codigo_producto;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
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

	public void setTotalParcial(double totalParcial) {
		this.totalParcial = totalParcial;
	}
	
	
}
