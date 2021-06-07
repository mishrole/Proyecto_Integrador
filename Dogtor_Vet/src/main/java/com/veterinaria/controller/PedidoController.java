package com.veterinaria.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.veterinaria.entity.Carrito;
import com.veterinaria.entity.DetallePedidoProducto;
import com.veterinaria.entity.DetallePedidoProductoPK;
import com.veterinaria.entity.Pedido;
import com.veterinaria.entity.Usuario;
import com.veterinaria.service.CarritoService;
import com.veterinaria.service.PedidoService;
import com.veterinaria.service.UsuarioService;

@Controller
public class PedidoController {
	
	@Autowired
	private PedidoService service;
	
	@Autowired
	private CarritoService carritoService;
	
	@Autowired
	private UsuarioService usuarioService;
	
	@RequestMapping("/listaPedido")
	@ResponseBody
	public List<Pedido> listaPedido() {
		return service.listaPedido();
	}
	
	@RequestMapping("/listaPedidoPorCliente")
	@ResponseBody
	public List<Pedido> listaPedidoPorCliente(Integer codigo_cliente) {
		return service.listaPedidoPorCliente(codigo_cliente);
	}
	
	@RequestMapping("/listaPedidoPorRepartidor")
	@ResponseBody
	public List<Pedido> listaPedidoPorRepartidor(Integer codigo_repartidor) {
		return service.listaPedidoPorRepartidor(codigo_repartidor);
	}
	
	@RequestMapping("/registraPedido")
	@ResponseBody
	public Map<String, Object> registraPedido(Integer codigo_usuario, String direccion_usuario, String referencia_usuario, String telefono_usuario, String dni_usuario, String fecha_entrega) {
		Map<String, Object> salida = new HashMap<String, Object>();
		
		try {
			
			// Obtenemos todos los items guardados en el carrito
			List<Carrito> carrito = (List<Carrito>) carritoService.listaCarritoPorUsuario(codigo_usuario);
			
			if(carrito.size() < 1) {
				salida.put("MENSAJE", "No existen productos en el carrito");
				return salida;
			} else {
				// Retorna la suma de precio * cantidad de todos los productos en el carrito del usuario
				Double subtotalCarrito = carritoService.subtotalCarrito(codigo_usuario);
				
				// Lista vacía que llenaremos
				List<DetallePedidoProducto> detallePedidoProducto = new ArrayList<DetallePedidoProducto>();
				
				// Por cada elemento del carrito, seteamos el pk del producto, y llenamos el Detalle de Pedido Producto
				for(Carrito c : carrito) {
					DetallePedidoProductoPK pkDetalle = new DetallePedidoProductoPK();
					pkDetalle.setCodigo_producto(c.getCodigo_producto());
					
					DetallePedidoProducto restoDetalle = new DetallePedidoProducto();
					restoDetalle.setCantidad_pedido(c.getCantidad_carrito());
					restoDetalle.setPrecio_pedido(subtotalCarrito);
					restoDetalle.setObjDetallePedidoProductoPK(pkDetalle);
					
					detallePedidoProducto.add(restoDetalle);
				}
				
				// Obtenemos un usuario con rol repartidor aleatorio
				List<Usuario> usuarioRepartidor = usuarioService.obtieneRepartidorRandom();
				
				// Seteamos los datos del Pedido
				Pedido objPedido = new Pedido();
				objPedido.setCodigo_cliente(codigo_usuario);
				objPedido.setFecha_solicitud_pedido(new Date());
				objPedido.setFecha_entrega_pedido(fecha_entrega);
				objPedido.setMonto_pedido(subtotalCarrito);
				objPedido.setCodigo_repartidor(usuarioRepartidor.get(0).getCodigo_usuario());
				objPedido.setCodigo_estado_pedido(1);
				objPedido.setDetallesPedido(detallePedidoProducto);
				
				Pedido objSalida = service.insertaPedido(objPedido);
				
				if(objSalida != null) {
					
					// Vaciar carrito
					for(Carrito c : carrito) {
						carritoService.eliminaProductoCarrito(c.getCodigo_carrito());
					}
					
					try {
						// Obtenemos al usuario Cliente actual
						Optional<Usuario> usuarioCliente = usuarioService.obtieneUsuarioPorId(codigo_usuario);
						
						// Actualizamos la dirección, referencia, y teléfono del usuario Cliente
						if(usuarioCliente.isPresent()) {
							usuarioCliente.ifPresent((Usuario result) -> {
								result.setDireccion_usuario(direccion_usuario);
								result.setReferencia_usuario(referencia_usuario);
								result.setTelefono_usuario(telefono_usuario);
								result.setDni_usuario(dni_usuario);
								
								Usuario objSalidaCliente = usuarioService.insertaUsuario(result);
								
								if(objSalidaCliente == null) {
									salida.put("MENSAJE", "Error al actualizar usuario");
								}
							});
						}
					} catch (Exception e) {
						salida.put("MENSAJE", "Error al actualizar información del usuario");
						e.printStackTrace();
					}
					
					salida.put("MENSAJE", "El pedido ha sido registrado correctamente");
					
				}
			}

		} catch (Exception e) {
			salida.put("MENSAJE", "Error, el pedido no pudo ser registrado");
			e.printStackTrace();
		} finally {
			List<Pedido> lista = service.listaPedido();
			salida.put("lista", lista);
		}
		
		return salida;
	}
	
	@RequestMapping("/actualizaEstadoPedido")
	@ResponseBody
	public Map<String, Object> actualizaEstadoPedido(Integer codigo_pedido, Integer codigo_estado_pedido) {
		Map<String, Object> salida = new HashMap<String, Object>();
		
		Optional<Pedido> option = service.obtienePorId(codigo_pedido);
		
		try {
			if(option.isPresent()) {
				option.ifPresent((Pedido result) -> {
					result.setCodigo_estado_pedido(codigo_estado_pedido);
					
					Pedido pedidoSalida = service.insertaPedido(result);
					
					if(pedidoSalida != null) {
						salida.put("MENSAJE", "El estado del pedido ha sido modificado");
					}
				});
			}
		} catch (Exception e) {
			e.printStackTrace();
			salida.put("MENSAJE", "Error, el pedido no pudo ser actualizado");
		} finally {
			List<Pedido> lista = service.listaPedido();
			salida.put("lista", lista);
		}
		
		return salida;
	}
}
