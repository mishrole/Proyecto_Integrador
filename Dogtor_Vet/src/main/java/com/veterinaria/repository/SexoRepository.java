package com.veterinaria.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.veterinaria.entity.Sexo;

public interface SexoRepository extends JpaRepository<Sexo, Integer>{
	
	@Query("Select s from Sexo s")
	public abstract List<Sexo> listaSexo();
}
