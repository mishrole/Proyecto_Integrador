package com.veterinaria.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.veterinaria.entity.DetalleRolUsuario;
import com.veterinaria.repository.DetalleRolUsuarioRepository;

@Service
public class DetalleRolUsuarioServiceImplem implements DetalleRolUsuarioService {
	
	@Autowired
	private DetalleRolUsuarioRepository repository;
	
	@Override
	public DetalleRolUsuario insertaUsuarioRol(DetalleRolUsuario objUsuarioRol) {
		return repository.save(objUsuarioRol);
	}

	@Override
	public void eliminaUsuarioRol(DetalleRolUsuario objUsuarioRol) {
		repository.delete(objUsuarioRol);
		
	}

}
