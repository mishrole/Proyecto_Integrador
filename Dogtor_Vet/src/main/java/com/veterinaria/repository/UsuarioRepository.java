package com.veterinaria.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.veterinaria.entity.Usuario;

public interface UsuarioRepository extends JpaRepository<Usuario, Integer>{
	
	/*@Query("Select u from Usuario u where u.emailUsuario like :param_email and u.contrasenaUsuario like :param_contrasena")
	public abstract List<Usuario> listaUsuarioPorEmailyContrasena(@Param("param_email") String param_email, @Param("param_contrasena") String param_contrasena); */
}
