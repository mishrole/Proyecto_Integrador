package com.veterinaria.entity;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;


@Entity
@Table(name = "tb_boleta")
public class Boleta {
	
	@Column(name = "codigo_boleta")
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer codigo_boleta;
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "fecha_boleta")
	private Date fecha_boleta = new Date();
	
	@Column(name = "codigo_cliente")
	private Integer codigo_cliente;
	
	@Column(name = "codigo_vendedor")
	private Integer codigo_vendedor;
	
	@Column(name = "codigo_tipo_boleta")
	private Integer codigo_tipo_boleta;
	
	
	
	@ManyToOne
	@JoinColumn(name = "codigo_cliente", insertable = false, updatable = false, nullable = false)
	private Usuario cliente;
	
	@ManyToOne
	@JoinColumn(name = "codigo_vendedor", insertable = false, updatable = false, nullable = false)
	private Usuario vendedor;
	
	
	@ManyToOne
	@JoinColumn(name = "codigo_tipo_boleta", insertable = false, updatable = false, nullable = false)
	private TipoBoleta tipoboleta;
	
	
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "codigo_boleta")
	private List<ProductoHasBoleta> detallesBoleta;
	

	public Integer getCodigo_boleta() {
		return codigo_boleta;
	}

	public void setCodigo_boleta(Integer codigo_boleta) {
		this.codigo_boleta = codigo_boleta;
	}

	public Date getFecha_boleta() {
		return fecha_boleta;
	}

	public void setFecha_boleta(Date fecha_boleta) {
		this.fecha_boleta = fecha_boleta;
	}

	public Usuario getCliente() {
		return cliente;
	}

	public void setCliente(Usuario cliente) {
		this.cliente = cliente;
	}

	public Usuario getVendedor() {
		return vendedor;
	}

	public void setVendedor(Usuario vendedor) {
		this.vendedor = vendedor;
	}

	public TipoBoleta getTipoboleta() {
		return tipoboleta;
	}

	public void setTipoboleta(TipoBoleta tipoboleta) {
		this.tipoboleta = tipoboleta;
	}

	public List<ProductoHasBoleta> getDetallesBoleta() {
		return detallesBoleta;
	}

	public void setDetallesBoleta(List<ProductoHasBoleta> detallesBoleta) {
		this.detallesBoleta = detallesBoleta;
	}
	
	
	
}
