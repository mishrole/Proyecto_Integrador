package com.veterinaria.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.veterinaria.entity.DiaSemana;
import com.veterinaria.repository.DiaSemanaRepository;

@Service
public class DiaSemanaServiceImplem implements DiaSemanaService {

	@Autowired
	private DiaSemanaRepository repository;

	@Override
	public List<DiaSemana> listaDiaSemana() {
		return repository.listaDiaSemana();
	}

}