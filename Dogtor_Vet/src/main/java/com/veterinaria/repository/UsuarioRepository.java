package com.veterinaria.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.veterinaria.entity.Usuario;

public interface UsuarioRepository extends JpaRepository<Usuario, Long>{
	
	@Query("Select u from Usuario u where u.email_usuario like :param_email and u.contrasena_usuario like :param_password")
	public abstract List<Usuario> listaUsuarioPorEmailYContrasena(@Param("param_email") String email_usuario, @Param("param_password") String contrasena_usuario);
}
