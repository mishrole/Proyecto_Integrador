package com.veterinaria.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.veterinaria.entity.CategoriaProducto;

public interface CategoriaProductoRepository extends JpaRepository<CategoriaProducto, Integer> {
	
	@Query("Select cp from CategoriaProducto cp")
	public abstract List<CategoriaProducto> listaCategoriaProducto();
}
