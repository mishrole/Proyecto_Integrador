package com.veterinaria.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.veterinaria.entity.Rol;

public interface RolRepository extends JpaRepository<Rol, Integer>{
	
	@Query("Select r from Rol r")
	public abstract List<Rol> listaRol();
	
}
