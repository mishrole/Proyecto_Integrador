package com.veterinaria.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import com.veterinaria.entity.Boleta;
import com.veterinaria.entity.ProductoHasBoleta;
import com.veterinaria.repository.BoletaRepository;
import com.veterinaria.repository.ProductoHasBoletaRepository;

@Service
public class BoletaServiceImpl implements BoletaService{

	@Autowired
	private BoletaRepository boletaRepository;
	
	@Autowired
	private ProductoHasBoletaRepository detalleRepository;
	
	
	@Override
	@Transactional
	public Boleta insertaBoleta(Boleta obj) {
		Boleta cabecera = boletaRepository.save(obj);
		for (ProductoHasBoleta d : cabecera.getDetallesBoleta()) {
			d.getProductoHasBoletaPK().setCodigo_boleta(cabecera.getCodigo_boleta());
			detalleRepository.actualizaStock(d.getCantidad(), d.getProductoHasBoletaPK().getCodigo_producto());
			detalleRepository.save(d);
		}
		return cabecera;
	}

}
