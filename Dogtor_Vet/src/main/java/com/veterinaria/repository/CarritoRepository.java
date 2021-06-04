package com.veterinaria.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.veterinaria.entity.Carrito;

public interface CarritoRepository extends JpaRepository<Carrito, Integer> {
	
	@Query("Select c from Carrito c, Usuario u, Producto p where c.usuario.codigo_usuario = u.codigo_usuario and c.producto.codigo_producto = p.codigo_producto and c.codigo_usuario like :param_usuario")
	public abstract List<Carrito> listaCarritoPorUsuario(@Param("param_usuario") Integer codigo_usuario);
	
}
