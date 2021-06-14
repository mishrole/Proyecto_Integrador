package com.veterinaria.service;

import java.util.List;

import com.veterinaria.entity.DetallePedidoProducto;

public interface DetallePedidoProductoService {
	
	public abstract List<DetallePedidoProducto> listaDetallePedidoProductoPorCodigo(Integer codigo_pedido);

}
