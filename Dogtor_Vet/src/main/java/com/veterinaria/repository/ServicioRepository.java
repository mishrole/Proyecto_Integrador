package com.veterinaria.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.veterinaria.entity.Servicio;

public interface ServicioRepository extends JpaRepository<Servicio, Integer> {
	@Query("Select a from Servicio a where a.nombre_servicio like :fil")
	public abstract List<Servicio> listaServicioPorNombreLike(@Param("fil") String nombre_servicio);
}
