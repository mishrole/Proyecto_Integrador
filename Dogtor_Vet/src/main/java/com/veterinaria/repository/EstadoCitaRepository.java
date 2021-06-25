package com.veterinaria.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.veterinaria.entity.EstadoCita;

public interface EstadoCitaRepository extends JpaRepository<EstadoCita, Integer>{
	
	@Query("Select e from EstadoCita e")
	public abstract List<EstadoCita> listaEstadoCitas();
	
}
