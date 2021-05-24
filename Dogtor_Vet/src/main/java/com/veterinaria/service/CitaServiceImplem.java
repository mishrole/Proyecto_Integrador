package com.veterinaria.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.veterinaria.entity.Cita;
import com.veterinaria.repository.CitaRepository;

@Service
public class CitaServiceImplem implements CitaService {
	
	@Autowired
	private CitaRepository repository;

	@Override
	public List<Cita> listaCita() {
		return repository.listaCita();
	}

	@Override
	public List<Cita> listaCitaPorCodigo(Integer codigo_cita) {
		return repository.listaCitaPorCodigo(codigo_cita);
	}

}
