package com.veterinaria.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.veterinaria.entity.Raza;

public interface RazaRepository extends JpaRepository<Raza, Integer>{
	
	@Query("select r from Raza r where r.codigo_especie_mascota like :param_especie")
	public abstract List<Raza> listaRaza(@Param("param_especie") Integer especie);
}
