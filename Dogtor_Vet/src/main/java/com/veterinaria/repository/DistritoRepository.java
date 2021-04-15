package com.veterinaria.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.veterinaria.entity.Distrito;

public interface DistritoRepository extends JpaRepository<Distrito, Integer> {
	
	@Query("Select d from Distrito d")
	public abstract List<Distrito> listaDistrito();

}
