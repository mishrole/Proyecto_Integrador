package com.veterinaria.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.veterinaria.entity.Especialidad;
import com.veterinaria.repository.EspecialidadRepository;

@Service
public class EspecialidadServiceImplem implements EspecialidadService {
	
	@Autowired
	private EspecialidadRepository repository;
	
	@Override
	public List<Especialidad> listaEspecialidad() {
		return repository.listaEspecialidad();
	}

}
