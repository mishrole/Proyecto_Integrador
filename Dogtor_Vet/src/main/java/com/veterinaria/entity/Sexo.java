package com.veterinaria.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "tb_sexo_mascota")
public class Sexo {

	@Column(name = "codigo_sexo_mascota")
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int codigo_sexo_mascota;

	@Column(name = "nombre_sexo_mascota")
	private String nombre_sexo_mascota;
}
