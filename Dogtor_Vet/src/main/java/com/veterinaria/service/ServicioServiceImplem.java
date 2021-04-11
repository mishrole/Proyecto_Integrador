package com.veterinaria.service;

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
}
