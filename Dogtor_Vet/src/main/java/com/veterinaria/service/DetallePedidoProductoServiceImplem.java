package com.veterinaria.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.veterinaria.entity.DetallePedidoProducto;
import com.veterinaria.repository.DetallePedidoProductoRepository;

@Service
public class DetallePedidoProductoServiceImplem implements DetallePedidoProductoService {
	
	@Autowired
	private DetallePedidoProductoRepository repository;

	@Override
	public List<DetallePedidoProducto> listaDetallePedidoProductoPorCodigo(Integer codigo_pedido) {
		return repository.listaDetallePedidoProductoPorCodigoPedido(codigo_pedido);
	}
}
