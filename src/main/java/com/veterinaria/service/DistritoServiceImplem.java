package com.veterinaria.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.veterinaria.entity.Distrito;
import com.veterinaria.repository.DistritoRepository;

@Service
public class DistritoServiceImplem implements DistritoService {
	
	@Autowired
	private DistritoRepository repository;

	@Override
	public List<Distrito> listaDistrito() {
		return repository.findAll();
	}
}
