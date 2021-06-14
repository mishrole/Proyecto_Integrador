package com.veterinaria.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.veterinaria.entity.DetallePedidoProducto;

public interface DetallePedidoProductoRepository extends JpaRepository<DetallePedidoProducto, Integer> {
	@Modifying
	@Query("Update Producto p set p.stock_producto = p.stock_producto - :param_cantidad where p.codigo_producto = :param_codigo")
	public abstract void actualizaStock(@Param("param_cantidad") Integer stock_producto, @Param("param_codigo") Integer codigo_producto);
	
	@Query("Select dp from DetallePedidoProducto dp where dp.pedido.codigo_pedido like :param_pedido")
	public abstract List<DetallePedidoProducto> listaDetallePedidoProductoPorCodigoPedido(@Param("param_pedido") Integer codigo_pedido);
}
