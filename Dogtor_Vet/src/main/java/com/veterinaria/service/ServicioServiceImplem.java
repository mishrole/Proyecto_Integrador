package com.veterinaria.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.veterinaria.entity.Servicio;
import com.veterinaria.repository.ServicioRepository;

@Service
public class ServicioServiceImplem implements ServicioService {
	
	@Autowired
	private ServicioRepository repository;

	@Override
	public Servicio insertaServicio(Servicio objServicio) {
		return repository.save(objServicio);
	}

	@Override
	public List<Servicio> listaServicio() {
		return repository.findAll();
	}

	@Override
	public Servicio insertaActualizaServicio(Servicio obj) {
		return repository.save(obj);
	}

	@Override
	public Optional<Servicio> obtienePorId(Integer codigo_servicio) {
		return repository.findById(codigo_servicio);
	}

	@Override
	public void eliminaServicio(Integer id) {
		repository.deleteById(id);
		
	}

	@Override
	public List<Servicio> listaServicioPorNombreLike(String filtro) {
		return repository.listaServicioPorNombreLike(filtro);
	}
}
