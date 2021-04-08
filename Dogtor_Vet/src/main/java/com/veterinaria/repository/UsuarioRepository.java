package com.veterinaria.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.veterinaria.entity.Usuario;

public interface UsuarioRepository extends JpaRepository<Usuario, Integer>{
	
	@Query("Select u from Usuario where u.email_usuario like :param_filtro")
	public abstract List<Usuario> listaPorEmailyContrasena(@Param("param_filtro") String filtro);
}
