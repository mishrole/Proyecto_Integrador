package com.veterinaria.service;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.veterinaria.entity.DetallePedidoProducto;
import com.veterinaria.entity.Pedido;
import com.veterinaria.repository.DetallePedidoProductoRepository;
import com.veterinaria.repository.PedidoRepository;

@Service
public class PedidoServiceImplem implements PedidoService {
	
	@Autowired
	private PedidoRepository repository;
	
	@Autowired
	private DetallePedidoProductoRepository detalleRepository;
	
	@Override
	public List<Pedido> listaPedido() {
		return repository.findAll();
	}

	@Override
	public List<Pedido> listaPedidoPorCliente(Integer codigo_cliente) {
		return repository.listaPedidoPorCliente(codigo_cliente);
	}

	@Override
	public Optional<Pedido> obtienePorId(Integer codigo_pedido) {
		return repository.findById(codigo_pedido);
	}

	@Override
	@Transactional
	public Pedido insertaPedido(Pedido objPedido) {
		Pedido cabecera = repository.save(objPedido);
		
		for(DetallePedidoProducto detalle : cabecera.getDetallesPedido()) {
			detalle.getObjDetallePedidoProductoPK().setCodigo_pedido(cabecera.getCodigo_pedido());
			detalleRepository.actualizaStock(detalle.getCantidad_pedido(), detalle.getObjDetallePedidoProductoPK().getCodigo_producto());
			detalleRepository.save(detalle);
		}
		
		return cabecera;
	}

	@Override
	public List<Pedido> listaPedidoPorRepartidor(Integer codigo_repartidor) {
		return repository.listaPedidoPorRepartidor(codigo_repartidor);
	}
	
	
}
