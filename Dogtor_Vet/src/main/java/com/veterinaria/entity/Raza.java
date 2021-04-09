package com.veterinaria.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "tb_raza_mascota")
public class Raza {
	
	@Column(name = "codigo_raza_mascota")
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int codigo_raza_mascota;

	@Column(name = "nombre_raza_mascota")
	private String nombre_raza_mascota;
	
	@Column(name = "codigo_especie_mascota")
	private int codigo_especie_mascota;

	public int getCodigo_raza_mascota() {
		return codigo_raza_mascota;
	}

	public void setCodigo_raza_mascota(int codigo_raza_mascota) {
		this.codigo_raza_mascota = codigo_raza_mascota;
	}

	public String getNombre_raza_mascota() {
		return nombre_raza_mascota;
	}

	public void setNombre_raza_mascota(String nombre_raza_mascota) {
		this.nombre_raza_mascota = nombre_raza_mascota;
	}

	public int getCodigo_especie_mascota() {
		return codigo_especie_mascota;
	}

	public void setCodigo_especie_mascota(int codigo_especie_mascota) {
		this.codigo_especie_mascota = codigo_especie_mascota;
	}
	
	
}
