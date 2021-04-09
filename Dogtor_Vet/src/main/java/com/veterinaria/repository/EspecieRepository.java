package com.veterinaria.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.veterinaria.entity.Especie;

public interface EspecieRepository extends JpaRepository<Especie, Integer>{

	@Query("Select e from Especie e")
	public abstract List<Especie> listaEspecie();
}
