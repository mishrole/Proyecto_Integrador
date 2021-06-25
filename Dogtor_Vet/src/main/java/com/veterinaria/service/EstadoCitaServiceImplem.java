package com.veterinaria.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.veterinaria.entity.EstadoCita;
import com.veterinaria.repository.EstadoCitaRepository;


@Service
public class EstadoCitaServiceImplem implements EstadoCitaService{
	@Autowired
	private EstadoCitaRepository repository;

	@Override
	public List<EstadoCita> listaEstadoCitas() {
		return repository.listaEstadoCitas();
	}
}
