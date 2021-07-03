package com.veterinaria.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.veterinaria.entity.Incidente;
import com.veterinaria.repository.IncidenteRepository;

@Service
public class IncidenteServiceImplem implements IncidenteService {
	
	@Autowired
	private IncidenteRepository repository;

	@Override
	public List<Incidente> listaIncidente() {
		return repository.listaIncidente();
	}

	@Override
	public List<Incidente> listaIncidentePorCodigo(Integer codigo_incidente) {
		return repository.listaIncidentePorCodigo(codigo_incidente);
	}

	@Override
	public Incidente insertaIncidente(Incidente objIncidente) {
		return repository.save(objIncidente);
	}

	@Override
	public List<Incidente> listaIncidentePorUsuario(Integer codigo_incidente) {
		return repository.listaIncidentePorUsuario(codigo_incidente);
	}

	@Override
	public Optional<Incidente> obtienePorId(Integer codigo_incidente) {
		return repository.findById(codigo_incidente);
	}



}
