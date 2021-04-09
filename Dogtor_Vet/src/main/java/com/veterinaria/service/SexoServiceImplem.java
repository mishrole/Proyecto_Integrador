package com.veterinaria.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.veterinaria.entity.Sexo;
import com.veterinaria.repository.SexoRepository;

@Service
public class SexoServiceImplem implements SexoService {
	
	@Autowired
	private SexoRepository repository;
	
	@Override
	public List<Sexo> listaSexo() {
		return repository.listaSexo();
	}
	
}
