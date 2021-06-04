package com.veterinaria.service;

import java.util.List;
import java.util.Optional;

import com.veterinaria.entity.Carrito;

public interface CarritoService {
	public abstract List<Carrito> listaCarritoPorUsuario(Integer codigo_usuario);
	public abstract Carrito insertaProductoCarrito(Carrito objCarrito);
	public abstract void eliminaProductoCarrito(Integer codigo_carrito);
	public abstract Optional<Carrito> obtieneProductoCarritoPorId(Integer codigo_carrito);
}
