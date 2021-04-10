package com.veterinaria.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.veterinaria.entity.Producto;
import com.veterinaria.repository.ProductoRepository;

@Service
public class ProductoServiceImplem implements ProductoService {
	
	@Autowired
	private ProductoRepository repository;

	@Override
	public Producto insertaProducto(Producto objProducto) {
		return repository.save(objProducto);
	}
	
	
}
