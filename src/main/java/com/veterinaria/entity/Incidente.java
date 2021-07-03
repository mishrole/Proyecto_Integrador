package com.veterinaria.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "tb_incidente")
public class Incidente {

	
	@Column(name = "codigo_incidente")
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer codigo_incidente;
	
	@Column(name = "codigo_cita")
	private Integer codigo_cita;
	
	@Column(name = "codigo_mascota")
	private Integer codigo_mascota;
	
	@Column(name = "codigo_especialidad")
	private Integer codigo_especialidad;

	@Column(name = "codigo_usuario")
	private Integer codigo_usuario;
	
	@Column(name = "motivo_consulta")
	private String motivo_consulta;
	
	@Column(name = "sintomas_mascota")
	private String sintomas_mascota;
	
	@Column(name = "enfermedades_previas")
	private String enfermedades_previas;
	
	@Column(name = "diagnostico")
	private String motivo_cita;
	
	@ManyToOne
	@JoinColumn(name = "codigo_cita", insertable = false, updatable = false, nullable = false)
	private Cita cita;
	
	@ManyToOne
	@JoinColumn(name = "codigo_mascota", insertable = false, updatable = false, nullable = false)
	private Mascota mascota;
	
	@ManyToOne
	@JoinColumn(name = "codigo_especialidad", insertable = false, updatable = false, nullable = false)
	private Especialidad especialidad;
	
	@ManyToOne
	@JoinColumn(name = "codigo_usuario", insertable = false, updatable = false, nullable = false)
	private Usuario usuario;
	
	@ManyToOne
	@JoinColumn(name = "codigo_servicio", insertable = false, updatable = false, nullable = false)
	private Servicio servicio;
	
	

	public Integer getCodigo_incidente() {
		return codigo_incidente;
	}

	public void setCodigo_incidente(Integer codigo_incidente) {
		this.codigo_incidente = codigo_incidente;
	}

	public Integer getCodigo_cita() {
		return codigo_cita;
	}

	public void setCodigo_cita(Integer codigo_cita) {
		this.codigo_cita = codigo_cita;
	}

	public Integer getCodigo_mascota() {
		return codigo_mascota;
	}

	public void setCodigo_mascota(Integer codigo_mascota) {
		this.codigo_mascota = codigo_mascota;
	}

	public Integer getCodigo_especialidad() {
		return codigo_especialidad;
	}

	public void setCodigo_especialidad(Integer codigo_especialidad) {
		this.codigo_especialidad = codigo_especialidad;
	}

	public Integer getCodigo_usuario() {
		return codigo_usuario;
	}

	public void setCodigo_usuario(Integer codigo_usuario) {
		this.codigo_usuario = codigo_usuario;
	}

	public String getMotivo_consulta() {
		return motivo_consulta;
	}

	public void setMotivo_consulta(String motivo_consulta) {
		this.motivo_consulta = motivo_consulta;
	}

	public String getSintomas_mascota() {
		return sintomas_mascota;
	}

	public void setSintomas_mascota(String sintomas_mascota) {
		this.sintomas_mascota = sintomas_mascota;
	}

	public String getEnfermedades_previas() {
		return enfermedades_previas;
	}

	public void setEnfermedades_previas(String enfermedades_previas) {
		this.enfermedades_previas = enfermedades_previas;
	}

	public String getMotivo_cita() {
		return motivo_cita;
	}

	public void setMotivo_cita(String motivo_cita) {
		this.motivo_cita = motivo_cita;
	}
	
	
	
}
