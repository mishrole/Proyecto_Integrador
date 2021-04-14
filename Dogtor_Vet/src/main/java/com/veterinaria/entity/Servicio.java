package com.veterinaria.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "tb_servicio")
public class Servicio {
	
	@Column(name = "codigo_servicio")
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int codigo_servicio;
	
	@Column(name = "codigo_tipo_servicio")
	private int codigo_tipo_servicio;
	
	@Column(name = "codigo_especialidad")
	private int codigo_especialidad;
	
	@Column(name = "codigo_especialista")
	private int codigo_especialista;
	
	@Column(name = "codigo_dia_semana")
	private int codigo_dia_semana;
	
	@Column(name = "inicio_turno_servicio")
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private Date inicio_turno_servicio;
	
	@Column(name = "fin_turno_servicio")
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private Date fin_turno_servicio;
	
	@Column(name = "nombre_servicio")
	private String nombre_servicio;
	
	@Column(name = "descripcion_servicio")
	private String descripcion_servicio;
	
	@Column(name = "precio_servicio")
	private double precio_servicio;

	@Column(name = "limite_diario_servicio")
	private int limite_diario_servicio;

	public int getCodigo_servicio() {
		return codigo_servicio;
	}

	public void setCodigo_servicio(int codigo_servicio) {
		this.codigo_servicio = codigo_servicio;
	}

	public int getCodigo_tipo_servicio() {
		return codigo_tipo_servicio;
	}

	public void setCodigo_tipo_servicio(int codigo_tipo_servicio) {
		this.codigo_tipo_servicio = codigo_tipo_servicio;
	}

	public int getCodigo_especialidad() {
		return codigo_especialidad;
	}

	public void setCodigo_especialidad(int codigo_especialidad) {
		this.codigo_especialidad = codigo_especialidad;
	}

	public int getCodigo_especialista() {
		return codigo_especialista;
	}

	public void setCodigo_especialista(int codigo_especialista) {
		this.codigo_especialista = codigo_especialista;
	}

	public int getCodigo_dia_semana() {
		return codigo_dia_semana;
	}

	public void setCodigo_dia_semana(int codigo_dia_semana) {
		this.codigo_dia_semana = codigo_dia_semana;
	}

	public Date getInicio_turno_servicio() {
		return inicio_turno_servicio;
	}

	public void setInicio_turno_servicio(Date inicio_turno_servicio) {
		this.inicio_turno_servicio = inicio_turno_servicio;
	}

	public Date getFin_turno_servicio() {
		return fin_turno_servicio;
	}

	public void setFin_turno_servicio(Date fin_turno_servicio) {
		this.fin_turno_servicio = fin_turno_servicio;
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

	public int getLimite_diario_servicio() {
		return limite_diario_servicio;
	}

	public void setLimite_diario_servicio(int limite_diario_servicio) {
		this.limite_diario_servicio = limite_diario_servicio;
	}

}
