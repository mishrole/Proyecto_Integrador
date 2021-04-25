package com.veterinaria.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.veterinaria.entity.CategoriaProducto;
import com.veterinaria.entity.Marca;
import com.veterinaria.entity.Producto;
import com.veterinaria.entity.Proveedor;
import com.veterinaria.service.CategoriaProductoService;
import com.veterinaria.service.MarcaService;
import com.veterinaria.service.ProductoService;
import com.veterinaria.service.ProveedorService;

@Controller
public class ProductoController {
	
	@Autowired
	private ProductoService service;
	
	/*
	@Autowired
	private MarcaService marcaService;
	
	@Autowired
	private CategoriaProductoService categoriaService;
	

	
	@Autowired
	private ProveedorService proveedorService;
	*/
	@RequestMapping("/verProducto")
	public String verRegistra() {
		return "crudProducto";
	}
	
	@RequestMapping("/listaProductoPorNombre")
	@ResponseBody
	public List<Producto> listaProductoPorNombre(String nombre_producto) {
		return service.listaProductoPorNombre(nombre_producto.trim());
	}
	/*
	@RequestMapping("/TraerMarcas")
	@ResponseBody
	public List<String> traeMarcaPorNombre() {
		return marcaService.traeMarcaPorNombre();
	}
	
	
	@RequestMapping("/listaCategoria")
	@ResponseBody
	public List<CategoriaProducto> listaCategoriaProducto() {
		return categoriaService.listaCategoriaProducto();
	}
	
	
	
	@RequestMapping("/listaProveedor")
	@ResponseBody
	public List<Proveedor> listaProveedor() {
		return proveedorService.listaProveedor();
	}
	*/
	
	/*
	@RequestMapping("/registraProducto")
	@ResponseBody
	public Map<String, Object> registra(Producto objProducto) {
		
		Map<String, Object> salida = new HashMap<>();
		Producto objSalida = service.insertaProducto(objProducto);
		
		if (objSalida == null) {
			salida.put("MENSAJE", "El registro no pudo ser completado");
		} else {
			salida.put("MENSAJE", "¡Registro exitoso!");
		}
		
		return salida;
	}*/
	
	
	
	@RequestMapping("/registraProducto")
	@ResponseBody
	public Map<String, Object> registra(Producto objProducto) {
		
		Map<String, Object> salida = new HashMap<String, Object>();
		Producto objSalida = null;
		
		try {
			objSalida = service.insertaProducto(objProducto);
			
			if(objSalida == null) {
				salida.put("MENSAJE", "El registro no pudo ser completado");
			} else {
				salida.put("MENSAJE", "¡Registro exitoso!");
			}
			
		} catch (Exception e) {
			salida.put("MENSAJE", "El registro no pudo ser completado");
		} finally {
			List<Producto> lista = service.listaProducto();
			salida.put("lista", lista);
		}
		
		return salida;
		
	}
	
	@RequestMapping("/actualizaProducto")
	@ResponseBody
	public Map<String, Object> actualiza(Producto objProducto) {
		Map<String, Object> salida = new HashMap<String, Object>();
		
		try {
			Optional<Producto> option = service.obtienePorId(objProducto.getCodigo_producto());
			
			if(option.isPresent()) {
				Producto objSalida = service.insertaProducto(objProducto);
				
				if(objSalida == null) {
					salida.put("MENSAJE", "La actualización no pudo ser completada");
				} else {
					salida.put("MENSAJE", "¡Actualización exitosa!");
				}
			} else {
				salida.put("MENSAJE", "Error, el producto no existe");
			}
			
		} catch (Exception e) {
			salida.put("MENSAJE", "La actualización no pudo ser completada");
		} finally {
			List<Producto> lista = service.listaProducto();
			salida.put("lista", lista);
		}
		
		return salida;
	}
	
	@RequestMapping("/eliminaProducto")
	@ResponseBody
	public Map<String, Object> elimina(Integer codigo_producto) {
		Map<String, Object> salida = new HashMap<String, Object>();
		
		Optional<Producto> option = service.obtienePorId(codigo_producto);
		
		try {
			if(option.isPresent()) {
				service.eliminaProducto(codigo_producto);
				salida.put("MENSAJE", "¡Eliminación exitosa!");
			} else {
				salida.put("MENSAJE", "Error, el producto no existe");
			}
		} catch (Exception e) {
			e.printStackTrace();
			salida.put("MENSAJE", "Error, la mascota no pudo ser eliminada");
		} finally {
			List<Producto> lista = service.listaProducto();
			salida.put("lista", lista);
		}
		
		return salida;
	}
}
