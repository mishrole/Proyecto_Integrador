package com.veterinaria.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "tb_mascota")
public class Mascota {

	@Column(name = "codigo_mascota")
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int codigo_mascota;

	@Column(name = "codigo_propietario")
	private String codigo_propietario;
	
	@Column(name = "nombre_mascota")
	private String nombre_mascota;
	
	@Column(name = "foto_mascota")
	private String foto_mascota;
	
	@Column(name = "codigo_raza_mascota")
	private String codigo_raza_mascota;
	
	@Column(name = "codigo_sexo_mascota")
	private String codigo_sexo_mascota;
	
	@Column(name = "codigo_especie_mascota")
	private String codigo_especie_mascota;
	
	@Column(name = "codigo_color_mascota")
	private String codigo_color_mascota;
	
	@Column(name = "fecha_nacimiento_mascota")
	private String fecha_nacimiento_mascota;
	
	@Column(name = "codigo_identificacion_mascota")
	private String codigo_identificacion_mascota;
	
	@Column(name = "codigo_cartilla_sanitaria")
	private String codigo_cartilla_sanitaria;

	public int getCodigo_mascota() {
		return codigo_mascota;
	}

	public void setCodigo_mascota(int codigo_mascota) {
		this.codigo_mascota = codigo_mascota;
	}

	public String getCodigo_propietario() {
		return codigo_propietario;
	}

	public void setCodigo_propietario(String codigo_propietario) {
		this.codigo_propietario = codigo_propietario;
	}

	public String getNombre_mascota() {
		return nombre_mascota;
	}

	public void setNombre_mascota(String nombre_mascota) {
		this.nombre_mascota = nombre_mascota;
	}

	public String getCodigo_raza_mascota() {
		return codigo_raza_mascota;
	}

	public void setCodigo_raza_mascota(String codigo_raza_mascota) {
		this.codigo_raza_mascota = codigo_raza_mascota;
	}

	public String getCodigo_sexo_mascota() {
		return codigo_sexo_mascota;
	}

	public void setCodigo_sexo_mascota(String codigo_sexo_mascota) {
		this.codigo_sexo_mascota = codigo_sexo_mascota;
	}

	public String getCodigo_especie_mascota() {
		return codigo_especie_mascota;
	}

	public void setCodigo_especie_mascota(String codigo_especie_mascota) {
		this.codigo_especie_mascota = codigo_especie_mascota;
	}

	public String getCodigo_color_mascota() {
		return codigo_color_mascota;
	}

	public void setCodigo_color_mascota(String codigo_color_mascota) {
		this.codigo_color_mascota = codigo_color_mascota;
	}

	public String getFecha_nacimiento_mascota() {
		return fecha_nacimiento_mascota;
	}

	public void setFecha_nacimiento_mascota(String fecha_nacimiento_mascota) {
		this.fecha_nacimiento_mascota = fecha_nacimiento_mascota;
	}

	public String getCodigo_identificacion_mascota() {
		return codigo_identificacion_mascota;
	}

	public void setCodigo_identificacion_mascota(String codigo_identificacion_mascota) {
		this.codigo_identificacion_mascota = codigo_identificacion_mascota;
	}

	public String getCodigo_cartilla_sanitaria() {
		return codigo_cartilla_sanitaria;
	}

	public void setCodigo_cartilla_sanitaria(String codigo_cartilla_sanitaria) {
		this.codigo_cartilla_sanitaria = codigo_cartilla_sanitaria;
	}

	public String getFoto_mascota() {
		return foto_mascota;
	}

	public void setFoto_mascota(String foto_mascota) {
		this.foto_mascota = foto_mascota;
	}
}
