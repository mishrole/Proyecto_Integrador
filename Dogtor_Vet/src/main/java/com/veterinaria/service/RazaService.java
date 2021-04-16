package com.veterinaria.service;

import java.util.List;

import com.veterinaria.entity.Raza;

public interface RazaService {
	public abstract List<Raza> listaRaza(Integer especie);
}
