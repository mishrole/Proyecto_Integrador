package com.veterinaria.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.veterinaria.entity.Carrito;
import com.veterinaria.repository.CarritoRepository;

@Service
public class CarritoServiceImplem implements CarritoService {
	
	@Autowired
	private CarritoRepository repository;
	
	@Override
	public List<Carrito> listaCarritoPorUsuario(Integer codigo_usuario) {
		return repository.listaCarritoPorUsuario(codigo_usuario);
	}

	@Override
	public Carrito insertaProductoCarrito(Carrito objCarrito) {
		return repository.save(objCarrito);
	}

	@Override
	public void eliminaProductoCarrito(Integer codigo_carrito) {
		repository.deleteById(codigo_carrito);
	}

	@Override
	public Optional<Carrito> obtieneProductoCarritoPorId(Integer codigo_carrito) {
		return repository.findById(codigo_carrito);
	}

	@Override
	public Optional<Carrito> buscarCarritoPorUsuarioYProducto(Integer codigo_usuario, Integer codigo_producto) {
		return repository.buscarCarritoPorUsuarioYProducto(codigo_usuario, codigo_producto);
	}

}
