package com.veterinaria.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.veterinaria.entity.TipoServicio;
import com.veterinaria.repository.TipoServicioRepository;

@Service
public class TipoServicioServiceImplem implements TipoServicioService {
	
	@Autowired
	private TipoServicioRepository repository;

	@Override
	public List<TipoServicio> listaTipoServicio() {
		return repository.listaTipoServicio();
	}
	
	
}
