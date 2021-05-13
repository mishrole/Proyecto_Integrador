package com.veterinaria.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.veterinaria.entity.Visibilidad;
import com.veterinaria.repository.VisibilidadRepository;

@Service
public class VisibilidadServiceImplem implements VisibilidadService {
	
	@Autowired
	private VisibilidadRepository repository;
	
	@Override
	public List<Visibilidad> listaVisibilidad() {
		return repository.listaVisibilidad();
	}
}
