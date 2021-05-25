package com.veterinaria.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.veterinaria.entity.ProductoHasBoleta;


public interface ProductoHasBoletaRepository extends JpaRepository<ProductoHasBoleta, Integer>{

	@Modifying
	@Query("update Producto x set x.stock_producto = x.stock_producto - :can where x.codigo_producto = :pro")
	public abstract void actualizaStock(@Param("can")int cantidad, @Param("pro")int codigo_producto);
}
