package com.veterinaria.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "tb_color_mascota")
public class Color {

	@Column(name = "codigo_color_mascota")
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int codigo_color_mascota;

	@Column(name = "nombre_color_mascota")
	private String nombre_color_mascota;
}
