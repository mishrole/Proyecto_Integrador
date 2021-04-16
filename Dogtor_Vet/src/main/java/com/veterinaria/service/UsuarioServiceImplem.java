package com.veterinaria.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.veterinaria.entity.Usuario;
import com.veterinaria.repository.UsuarioRepository;

@Service
public class UsuarioServiceImplem implements UsuarioService {
	
	@Autowired
	private UsuarioRepository repository;
	
	@Override
	public Usuario insertaUsuario(Usuario objUsuario) {
		return repository.save(objUsuario);
	}

	@Override
	public List<Usuario> listausuarioPorEmailYContrasena(String email_usuario, String contrasena_usuario) {
		return repository.listaUsuarioPorEmailYContrasena(email_usuario, contrasena_usuario);
	}

}
