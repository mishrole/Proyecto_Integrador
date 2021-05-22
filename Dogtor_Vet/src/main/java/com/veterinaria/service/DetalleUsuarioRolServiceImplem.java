package com.veterinaria.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.veterinaria.entity.DetalleUsuarioRol;
import com.veterinaria.repository.DetalleUsuarioRolRepository;

@Service
public class DetalleUsuarioRolServiceImplem implements DetalleUsuarioRolService {
	
	@Autowired
	private DetalleUsuarioRolRepository repository;
	
	@Override
	public DetalleUsuarioRol insertaUsuarioRol(DetalleUsuarioRol objUsuarioRol) {
		return repository.save(objUsuarioRol);
	}

	@Override
	public void eliminaUsuarioRol(DetalleUsuarioRol detalleUsuarioRol) {
		repository.delete(detalleUsuarioRol);
		
	}

}
