package com.veterinaria.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "tb_especie_mascota")
public class Especie {

	@Column(name = "codigo_especie_mascota")
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int codigo_especie_mascota;

	@Column(name = "nombre_especie_mascota")
	private String nombre_especie_mascota;
}
