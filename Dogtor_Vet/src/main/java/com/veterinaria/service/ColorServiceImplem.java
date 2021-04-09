package com.veterinaria.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.veterinaria.entity.Color;
import com.veterinaria.repository.ColorRepository;

@Service
public class ColorServiceImplem implements ColorService {

	@Autowired
	private ColorRepository repository;

	@Override
	public List<Color> listaColor() {
		return repository.listaColor();
	}
}
