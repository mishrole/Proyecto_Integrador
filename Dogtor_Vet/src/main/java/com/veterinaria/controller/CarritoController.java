package com.veterinaria.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.veterinaria.entity.Carrito;
import com.veterinaria.service.CarritoService;

@Controller
public class CarritoController {
	
	@Autowired
	private CarritoService service;
	
	@RequestMapping("/listaCarritoPorUsuario")
	@ResponseBody
	public List<Carrito> listaCarritoPorUsuario(Integer codigo_usuario) {
		return service.listaCarritoPorUsuario(codigo_usuario);
	}
	
	@RequestMapping("/registraCarrito")
	@ResponseBody
	public Map<String, Object> registra(Carrito objCarrito) {
		Map<String, Object> salida = new HashMap<String, Object>();
		
		Optional<Carrito> option = service.buscarCarritoPorUsuarioYProducto(objCarrito.getCodigo_usuario(), objCarrito.getCodigo_producto());
		
		try {
			if(option.isPresent()) {
				option.ifPresent((Carrito result) -> {
					
					Integer nuevaCantidad = result.getCantidad_carrito() + objCarrito.getCantidad_carrito();
					
					result.setCantidad_carrito(nuevaCantidad);
					
					Carrito objSalida = service.insertaProductoCarrito(result);
					
					if(objSalida != null) {
						salida.put("MENSAJE", "Cantidad actualizada");
					}
				});
			} else {
				
				Carrito objSalida = service.insertaProductoCarrito(objCarrito);
				
				if(objSalida == null) {
					salida.put("MENSAJE", "No se pudo añadir el producto");
				} else {
					salida.put("MENSAJE", "Producto añadido");
				}
				
			}
		} catch (Exception e) {
			salida.put("MENSAJE", "Ocurrió un error al realizar la operación");
			e.printStackTrace();
		} finally {
			List<Carrito> lista = service.listaCarritoPorUsuario(objCarrito.getCodigo_usuario());
			salida.put("lista", lista);
		}
		
		return salida;
	}
	
	@RequestMapping("/actualizaCantidadProductoCarrito")
	@ResponseBody
	public Map<String, Object> actualizaCantidadProductoCarrito(Integer codigo_carrito, Integer cantidad_carrito) {
		Map<String, Object> salida = new HashMap<String, Object>();
		
		Optional<Carrito> option = service.obtienePorId(codigo_carrito);
		
		try {
			if(option.isPresent()) {
				option.ifPresent((Carrito result) -> {
					result.setCantidad_carrito(cantidad_carrito);
					
					Carrito carritoSalida = service.insertaProductoCarrito(result);
					
					if(carritoSalida != null) {
						salida.put("MENSAJE", "Cantidad actualizada");
					}
				});
			} else {
				salida.put("MENSAJE", "Error, el registro no existe");
			}
		} catch (Exception e) {
			salida.put("MENSAJE", "Error, la cantidad no pudo ser actualizada");
			e.printStackTrace();
		} finally {
			List<Carrito> lista = service.listaCarritoPorUsuario(option.get().getCodigo_usuario());
			salida.put("lista", lista);
		}
		
		return salida;
	}
	
	@RequestMapping("/eliminaProductoCarrito")
	@ResponseBody
	public Map<String, Object> eliminaProductoCarrito(Integer codigo_carrito) {
		Map<String, Object> salida = new HashMap<String, Object>();
		
		Optional<Carrito> option = service.obtienePorId(codigo_carrito);
		
		try {
			if(option.isPresent()) {
				service.eliminaProductoCarrito(codigo_carrito);
				salida.put("MENSAJE", "¡Eliminación exitosa!");
			} else {
				salida.put("MENSAJE", "Error, el registro no existe");
			}
		} catch (Exception e) {
			salida.put("MENSAJE", "Error, el registro no pudo ser eliminado");
			e.printStackTrace();
		}
		
		return salida;
	}
}
