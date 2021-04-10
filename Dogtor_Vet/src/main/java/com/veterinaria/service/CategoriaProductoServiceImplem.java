package com.veterinaria.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.veterinaria.entity.CategoriaProducto;
import com.veterinaria.repository.CategoriaProductoRepository;

@Service
public class CategoriaProductoServiceImplem implements CategoriaProductoService {
	
	@Autowired
	private CategoriaProductoRepository repository;

	@Override
	public List<CategoriaProducto> listaCategoriaProducto() {
		return repository.listaCategoriaProducto();
	}
	
	
}
