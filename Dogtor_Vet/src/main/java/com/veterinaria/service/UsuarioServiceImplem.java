package com.veterinaria.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.veterinaria.entity.Enlace;
import com.veterinaria.entity.Rol;
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

	@Override
	public void eliminaUsuario(Integer codigo_usuario) {
		repository.deleteById(codigo_usuario);	
	}

	@Override
	public Optional<Usuario> obtieneUsuarioPorId(Integer codigo_usuario) {
		return repository.obtieneUsuarioPorId(codigo_usuario);
	}

	@Override
	public List<Usuario> listaUsuario() {
		return repository.findAll();
	}

	@Override
	public List<Usuario> listaUsuarioPorNombre(String nombre_usuario) {
		return repository.listaUsuarioPorNombre(nombre_usuario+"%");
	}

	@Override
	public Usuario login(Usuario objUsuario) {
		return repository.login(objUsuario);
	}

	@Override
	public List<Enlace> obtenerEnlacesDeUsuario(Integer codigo_usuario) {
		return repository.obtenerEnlacesDeUsuario(codigo_usuario);
	}

	@Override
	public List<Rol> obtenerRolesDeUsuario(Integer codigo_usuario) {
		return repository.obtenerRolesDeUsuario(codigo_usuario);
	}

	@Override
	public Page<Usuario> findAll(Pageable pageable) {
		return repository.findAll(pageable);
	}

}
