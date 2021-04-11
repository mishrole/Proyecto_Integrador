package com.veterinaria.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Table;

import org.springframework.data.annotation.Id;

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
	
	
}
