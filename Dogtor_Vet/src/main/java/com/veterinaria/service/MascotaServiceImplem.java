package com.veterinaria.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.veterinaria.entity.Mascota;
import com.veterinaria.repository.MascotaRepository;

@Service
public class MascotaServiceImplem implements MascotaService {
	
	@Autowired
	private MascotaRepository repository;

	@Override
	public Mascota insertaMascota(Mascota objMascota) {
		return repository.save(objMascota);
	}
	
}
