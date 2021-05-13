package com.veterinaria.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.veterinaria.entity.Especie;
import com.veterinaria.repository.EspecieRepository;

@Service
public class EspecieServiceImplem implements EspecieService {
	
	@Autowired
	private EspecieRepository repository;

	@Override
	public List<Especie> listaEspecie() {
		return repository.listaEspecie();
	}
	
}
