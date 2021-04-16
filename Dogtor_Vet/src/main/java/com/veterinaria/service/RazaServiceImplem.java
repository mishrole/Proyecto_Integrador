package com.veterinaria.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.veterinaria.entity.Raza;
import com.veterinaria.repository.RazaRepository;

@Service
public class RazaServiceImplem implements RazaService {

	@Autowired
	private RazaRepository repository;
	
	@Override
	public List<Raza> listaRaza(Integer especie) {
		return repository.listaRaza(especie);
	}

}
