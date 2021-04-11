package com.veterinaria.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "tb_servicio")
public class Servicio {
	
	@Column(name = "codigo_servicio")
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int codigo_producto;
	
	@Column(name = "nombre_servicio")
	private String nombre_servicio;
	
	@Column(name = "descripcion_servicio")
	private String descripcion_servicio;
	
	@Column(name = "precio_servicio")
	private double precio_servicio;
	
	@Column(name = "horario_servicio")
	private String horario_servicio;
	
	@Column(name = "fechas_servicio")
	private String fechas_servicio;
	
	@Column(name = "codigo_tipo_servicio")
	private int codigo_tipo_servicio;
	
	@Column(name = "limite_citas_servicio")
	private int limite_citas_servicio;

	public int getCodigo_producto() {
		return codigo_producto;
	}

	public void setCodigo_producto(int codigo_producto) {
		this.codigo_producto = codigo_producto;
	}

	public String getNombre_servicio() {
		return nombre_servicio;
	}

	public void setNombre_servicio(String nombre_servicio) {
		this.nombre_servicio = nombre_servicio;
	}

	public String getDescripcion_servicio() {
		return descripcion_servicio;
	}

	public void setDescripcion_servicio(String descripcion_servicio) {
		this.descripcion_servicio = descripcion_servicio;
	}

	public double getPrecio_servicio() {
		return precio_servicio;
	}

	public void setPrecio_servicio(double precio_servicio) {
		this.precio_servicio = precio_servicio;
	}

	public String getHorario_servicio() {
		return horario_servicio;
	}

	public void setHorario_servicio(String horario_servicio) {
		this.horario_servicio = horario_servicio;
	}

	public String getFechas_servicio() {
		return fechas_servicio;
	}

	public void setFechas_servicio(String fechas_servicio) {
		this.fechas_servicio = fechas_servicio;
	}

	public int getCodigo_tipo_servicio() {
		return codigo_tipo_servicio;
	}

	public void setCodigo_tipo_servicio(int codigo_tipo_servicio) {
		this.codigo_tipo_servicio = codigo_tipo_servicio;
	}

	public int getLimite_citas_servicio() {
		return limite_citas_servicio;
	}

	public void setLimite_citas_servicio(int limite_citas_servicio) {
		this.limite_citas_servicio = limite_citas_servicio;
	}
	
	
}
