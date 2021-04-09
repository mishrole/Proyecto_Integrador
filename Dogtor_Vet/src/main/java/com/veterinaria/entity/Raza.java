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
}
